
import Foundation
import UIKit
import Speech
import AVFoundation

class SpeechRecognizer: UIViewController, SFSpeechRecognizerDelegate,UITextFieldDelegate {
  
    // MARK: - PROPERTY
    var elements = String()
    var wordsFiltered: [String] = []
    var answerSpeechArray: [String] = []
    var words = String()
    var baseDataNumberArray: [String] = []
    var convertedFiltered = String()
    var concatenateWordsFiltered = String()
    
    // AUDIO
    var alertWordCorr: AVAudioPlayer?
    var alertWordInco: AVAudioPlayer?
    var playerSP: AVAudioPlayer?
    var velocity = 1
    let engine = AVAudioEngine()
    let speedControl = AVAudioUnitVarispeed()
    let pitchControl = AVAudioUnitTimePitch()
    
    var codeSpeech : String?
    var idiomaGSpeech: String?
    var onlyLeters = String()
    
    // MARK: - OULET Propierties 
    
    @IBOutlet weak var titleLblSpeech: UILabel!
    @IBOutlet weak var lblOptionalSpeech: UILabel!
    @IBOutlet weak var lblArraySpeech: UILabel!
    
    @IBOutlet weak var displaySpeechLbl: UILabel!

    @IBOutlet weak var viewCheckSpeech: UIImageView!
    @IBOutlet weak var btnPressHSpeech: UIButton!
    @IBOutlet weak var viewRpt: UIView!
    @IBOutlet weak var btnRpt: UIButton!
    @IBOutlet weak var lblRpt: UILabel!
    
    @IBOutlet weak var btnFoward: UIButton!
    private var audioEngine = AVAudioEngine()
    @IBOutlet weak var lblNumberSpeech: UILabel!
    
    
    private var speechRecognizer : SFSpeechRecognizer? = SFSpeechRecognizer(locale: Locale.init(identifier: "es-ES" ))
    private var request = SFSpeechAudioBufferRecognitionRequest()
    private var task : SFSpeechRecognitionTask!
    
    // MARK: - Local Propierties
    var isAvailable: Bool { true }
   
    var isStar : Bool = false
    var aray = [String]() // COMPARATOR
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speechRecognizer = SFSpeechRecognizer(locale: Locale.init(identifier: codeSpeech! ))
        overrideBtn()
       
        lblOptionalSpeech.text = "Practíca la pronunciación"
        lblOptionalSpeech.textColor = UIColor.black
        titleLblSpeech.text = idiomaGSpeech
        lblArraySpeech.text = aray[0]
        lblArraySpeech.textColor = .systemBackground
        lblNumberSpeech.text = "0"
        
        lblArraySpeech.desingViewSpeech()
        btnPressHSpeech.desingbtnSpeech()
        requestPermission()
        displaySpeechLbl.lblSpeech()
        view.desingView()
        titleLblSpeech.DesignLblTitle()
      
        
        btnRpt.desingBtnRpt()
        viewRpt.designBtnRepetir()
        lblRpt.desingLblRpt()
        btnFoward.desingBtnRpt()
        lblNumberSpeech.desingLbl2()
        btnRpt.isUserInteractionEnabled = true

        
        
   //MARK: - AUDIOS
        let recordingSession = AVAudioSession.sharedInstance()
        do {
            // Set the audio session category, mode, and options.
            try recordingSession.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker])
            try recordingSession.setActive(true)
        } catch {
            print("Failed to set audio session category.")
        }
        do {
            let alertCorrect = Bundle.main.path(forResource: "correctSound", ofType: "mp3")
            try alertWordCorr = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: alertCorrect!) as URL)
            
            let alertIncorrect = Bundle.main.path(forResource: "incorrecSound", ofType: "mp3")
            try alertWordInco = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: alertIncorrect!) as URL)
            
        }
        catch {// ERROR
        }
    }
    
    

    func numberSoundSP() {
  let filename = aray[0]
  guard let url = Bundle.main.url(forResource: filename, withExtension: "wav") else { return }
  
  do {  //try AVAudioSession.sharedInstance().setCategory(.playback)
     // try AVAudioSession.sharedInstance().setActive(true)
      
      playerSP = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
      guard let player = playerSP else { return }
      player.play()
  } catch {
      print("\(error) error in sounds")
  }
}
   
    func playy()  {
        
        let filename = aray[0]
        
        let path = Bundle.main.path(forResource: filename , ofType: "wav")!
            let url = NSURL.fileURL(withPath: path)
        // 1: load the file
        let file = (try? AVAudioFile(forReading: url))!

        // 2: create the audio player
        let audioPlayer = AVAudioPlayerNode()

        // 3: connect the components to our playback engine
        engine.attach(audioPlayer)
        engine.attach(pitchControl)
        engine.attach(speedControl)

        // 4: arrange the parts so that output from one is input to another
        engine.connect(audioPlayer, to: speedControl, format: nil)
        engine.connect(speedControl, to: pitchControl, format: nil)
        engine.connect(pitchControl, to: engine.mainMixerNode, format: nil)

        // 5: prepare the player to play its file from the beginning
        audioPlayer.scheduleFile(file, at: nil)

        // 6: start the engine and player
        try? engine.start()
        audioPlayer.play()
        
    }
    
    
    
    
    @IBAction func btnPressRpt(_ sender: Any) {
        
        if velocity == 0 {
            speedControl.rate = 0.38
            pitchControl.pitch = 1500
            velocity = 1
        }else {
            speedControl.rate = 1
            pitchControl.pitch = 2
            velocity = 0
        }
        
     
        playy()
        
        //  numberSoundSP()
    
    
    }
 
    
    @IBAction func btnForwardPress(_ sender: Any) {
        nextWord()
        
    }
    
   
// MARK: - SPEECHRECOGNIZATION
    func startSpeechRecognization() {
        
        let node = audioEngine.inputNode
        let recordingFormat = node.outputFormat(forBus: 0)
        node.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, _)
            in  self.request.append(buffer)
        }
        audioEngine.prepare()
        do {
            try audioEngine.start()
        } catch let error {
            alertView(message: "Error comes here for starting the audio listner = \(error.localizedDescription)")
        }
        
        
        guard let myRecognization = SFSpeechRecognizer() else {
            self.alertView(message: "Recognization is not allow on your local")
            return
        }
        if !myRecognization.isAvailable {
            self.alertView(message: "Recognization is free right now, Please try againg after some time ")
        }
        task = speechRecognizer?.recognitionTask(with: request, resultHandler: {
            (response, error) in  guard let response = response
            else {  if error != nil
            { }
            return }
        
        let message = response.bestTranscription.formattedString.uppercased()
        self.displaySpeechLbl.text = self.words
       self.words = message.uppercased().trimmingCharacters(in: .whitespaces)
        
       
 
        
        
       self.elements = self.aray[0].uppercased().trimmingCharacters(in: .whitespaces)
      print("\(self.words)words")
        
        })
    }

    func requestPermission() {
      //  self.btn_start.isEnabled = false
        SFSpeechRecognizer.requestAuthorization {
            (authState) in OperationQueue.main.addOperation {
                if authState == .authorized {
                    print("ACCEPTED")
       //             self.btn_start.isEnabled = true
                }else if authState == .denied {
                    self.alertView(message: "User denied the permission")
                    
                }else if authState == .notDetermined {
                    self.alertView(message: "In user phone there is no speech recognization")
            }else if authState == .restricted {
                self.alertView(message: "User has been resctricted for using the speech recognization")
          }
        }
    }
}
    
    func cancelSpeechRecognization() {
        task.finish()
        task.cancel()
        task = nil
        request.endAudio()
        audioEngine.stop()
        audioEngine.inputNode.removeTap(onBus: 0)

  }
    
    func alertView(message: String) {
        
        let controller = UIAlertController.init(title: "Error ocurred ...!", message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (_) in controller.dismiss(animated: true, completion: nil)
        }))
        self.present(controller, animated: true, completion: nil)
    }
    
    

        
        
        
        
    
    
    
    
    
    
}
extension Array where Element: Hashable {
    func removingDuplicate() -> [Element] {
        var addedDict = [Element: Bool]()
        return filter { addedDict.updateValue(true, forKey: $0) == nil
            
        }
    }
}
extension Array where Element == String {
    func concatenate() -> String {
        return self.joined(separator: " ")
    }
}



