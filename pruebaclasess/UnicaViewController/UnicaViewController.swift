//
//  File.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 03.11.2020.
//

//import Foundation
import UIKit
import AVFoundation


class UnicaViewController : UIViewController{
 
  
    // MARK: - INPUT MARK
    var expanded = true
    var idiomaG: String?
    var descriptionG: [String]?
    var counterF = -1
    var playerSoundNumber: AVAudioPlayer!
    var codeSpeechUnica : String?
    
    
    @IBOutlet weak var nameLanguageLbl: UILabel!
    @IBOutlet weak var numberLbl: UILabel!
    @IBOutlet weak var descriptionNumberLbl: UILabel!
    
    @IBOutlet weak var btnPress: UIButton!
    @IBOutlet weak var btnPressRest: UIButton!
    @IBOutlet weak var rptLbl: UILabel!
    @IBOutlet weak var expandView: UIView!
    @IBOutlet weak var btnRptOutlet: UIButton!
    @IBOutlet weak var butnrpt: UIButton!
    @IBOutlet weak var expandedConstrains: NSLayoutConstraint!
    @IBOutlet weak var circleLbl:UIView!


    override func viewDidLoad() {
            super.viewDidLoad()
        
        nameLanguageLbl.text = idiomaG
        nameLanguageLbl.DesignLblTitle()
        rptLbl.desingLblRpt()
        btnRptOutlet.desingBtnRpt()
        numberLbl.desingLbl2()
        view.desingView()
        expandView.desingView()
        btnPress.desingBtn()
        btnPressRest.desingBtn()
        descriptionNumberLbl.desingDescripLbl()
        circleLbl.designBtnRepetir()
        
}
 
    
    @IBAction func btnExpandSpeech(_ sender: Any) {
     
        let vS2 = self.storyboard?.instantiateViewController(identifier: "SpeechID") as! SpeechRecognizer
        vS2.idiomaGSpeech = idiomaG
        vS2.aray = descriptionG!
        vS2.codeSpeech = codeSpeechUnica!       
        self.navigationController?.pushViewController(vS2, animated: true)
        
    }
    
    
    @IBAction func startBtn(_ sender: Any) {
       
        if expanded == false { expandedConstrains.constant = 600
        } else {  expandedConstrains.constant = 0 }
        
        
        counterF = counterF + 1
        if counterF > 20 {counterF = 0 }
        
        let convert = counterF
        let convertText = String(convert)
        numberLbl.text = convertText
        
        descriptionNumberLbl.text = descriptionG![counterF]
       numberSound()
        btnPress.setTitle("SIGUIENTE", for: .normal)
        btnPressRest.setTitle("ATRAS", for: .normal)
}
    
    @IBAction func counterPress(_ sender: Any) {
        
        counterF = counterF + 1
        guard counterF < descriptionG!.count else {
            
            descriptionNumberLbl.text = "Esto es todo viejo"
            return }
        let convert = counterF
        let convertText = String(convert)
        numberLbl.text = convertText
        
        print(convert)
        descriptionNumberLbl.text = descriptionG![counterF]
        numberSound()
        print(String(describing: descriptionG?[counterF]))
        
 }
    
    

   @IBAction func counterPressResta(_ sender: Any) {
                  
    
    counterF = counterF - 1
    if counterF < 0 { counterF = 20 }
    let convert = counterF
    let convertText = String(convert)
    numberLbl.text = convertText
    
    descriptionNumberLbl.text = descriptionG?[counterF]
    
    numberSound()
    print(String(describing: descriptionG?[counterF]))
    
   }
    

        
@IBAction func btnRptPress(_ sender: Any) {
    
   numberSound()
    
   }


}
