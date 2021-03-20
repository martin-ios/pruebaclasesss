
import Foundation
import UIKit
extension SpeechRecognizer {
    
    func silense() {
        self.viewCheckSpeech.layer.backgroundColor = UIColor.white.cgColor
        self.viewCheckSpeech.image = UIImage(systemName: "xmark")
        self.viewCheckSpeech.tintColor = UIColor.red
        self.lblSpeech.textColor = UIColor.black
        alertWordInco!.play()
        sameWordeTimer()
        self.lblSpeech.text = "No hemos escuchado nada"
        
        
    }
    
    
    func wordOK() {
        
        self.viewCheckSpeech.layer.backgroundColor = UIColor.white.cgColor
        self.viewCheckSpeech.image = UIImage(systemName: "checkmark")
        self.viewCheckSpeech.tintColor = UIColor.green
        self.lblSpeech.textColor = UIColor.black
       alertWordCorr!.play()
        
        nextWordTimer()
    }

    func wordBad() {
  
        self.viewCheckSpeech.layer.backgroundColor = UIColor.white.cgColor
        self.viewCheckSpeech.image = UIImage(systemName: "xmark")
        self.viewCheckSpeech.tintColor = UIColor.red
       alertWordInco!.play()
      
       sameWordeTimer()
       lestGoAgainTimer()
        rptNumberTimer() 
        //self.lblSpeech.textColor = UIColor.black
        
    }

    func resetParola() {
   
        self.filtered.removeAll(); print("\(filtered)remove")
        self.onlyLeters = ""
    }
    
    func nextWord() {
        self.viewCheckSpeech.tintColor = UIColor.white
        guard aray.count == 1 else {
            self.aray.remove(at: 0)
            self.lblSpeech.textColor = UIColor.white
            self.viewCheckSpeech.backgroundColor = UIColor.white
            self.lblArraySpeech.text = aray[0]
            let numbersBoard = ( 21 - aray.count)
            
            lblNumberSpeech.text = String(numbersBoard)
            numberSoundSP()
           
            return }
        
        
        self.lblSpeech.textColor = UIColor.white
        self.viewCheckSpeech.backgroundColor = UIColor.white
        self.lblArraySpeech.text = aray[0]
  //     timer6()
        
    }
    func sameWord() {
        self.viewCheckSpeech.tintColor = UIColor.white
        self.lblSpeech.textColor = UIColor.white
        self.viewCheckSpeech.backgroundColor = UIColor.white
        
    }
    
    func letsGoAgain() {
       
        self.viewCheckSpeech.tintColor = UIColor.white
        self.lblSpeech.textColor = UIColor.black
        self.viewCheckSpeech.backgroundColor = UIColor.white
        self.lblSpeech.text = "Inténtalo una vez más"
        
        
    }
}
