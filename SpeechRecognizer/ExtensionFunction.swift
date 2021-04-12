
import Foundation
import UIKit
extension SpeechRecognizer {
    
    func silence() {
        self.viewCheckSpeech.layer.backgroundColor = UIColor.white.cgColor
        self.viewCheckSpeech.image = UIImage(systemName: "xmark")
        self.viewCheckSpeech.tintColor = UIColor.red
        self.displaySpeechLbl.textColor = UIColor.black
        alertWordInco!.play()
        sameWordeTimer()
        resetParola()
        self.displaySpeechLbl.text = "No hemos escuchado nada"
    
    }
    func wordOK() {

        self.displaySpeechLbl.textColor = UIColor.black
        self.viewCheckSpeech.layer.backgroundColor = UIColor.white.cgColor
        self.viewCheckSpeech.image = UIImage(systemName: "checkmark")
        self.viewCheckSpeech.tintColor = UIColor.green
        alertWordCorr!.play()
        resetParola()
        nextWordTimer()
    }

    func wordBad() {
        
        self.viewCheckSpeech.layer.backgroundColor = UIColor.white.cgColor
        self.viewCheckSpeech.image = UIImage(systemName: "xmark")
        self.viewCheckSpeech.tintColor = UIColor.red
        
        alertWordInco!.play()
        resetParola()
        sameWordeTimer()
        lestGoAgainTimer()
        rptNumberTimer()
      
    }

    func resetParola() {
        
        self.wordsFiltered.removeAll()
        print("\(wordsFiltered) print resetParola")

       self.onlyLetters = ""
        self.words = ""
        self.concatenateWordsFiltered = ""
    
    }
    
    func nextWord() {
        self.viewCheckSpeech.tintColor = UIColor.white
        guard aray.count == 1 else {
            self.aray.remove(at: 0)
  
            self.displaySpeechLbl.textColor = UIColor.white
            self.viewCheckSpeech.backgroundColor = UIColor.white
            self.lblArraySpeech.text = aray[0]
            let numbersBoard = ( 21 - aray.count)
            
            lblNumberSpeech.text = String(numbersBoard)
            numberSoundSP()
            return }
        
        
        self.displaySpeechLbl.textColor = UIColor.white
        self.viewCheckSpeech.backgroundColor = UIColor.white
        self.lblArraySpeech.text = aray[0]
        self.btnPressHSpeech.isHidden = true
 
        
    }
    func sameWord() {
        self.viewCheckSpeech.tintColor = UIColor.white
        self.viewCheckSpeech.backgroundColor = UIColor.white
        self.displaySpeechLbl.textColor = UIColor.white
    }
    
    func letsGoAgain() {
       
        self.viewCheckSpeech.tintColor = UIColor.white
        self.displaySpeechLbl.textColor = UIColor.black
        self.displaySpeechLbl.text = "Inténtalo una vez más"
        self.viewCheckSpeech.backgroundColor = UIColor.white
    
    }
}
