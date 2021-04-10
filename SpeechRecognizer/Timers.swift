//
//  Timers.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 26.12.2020.
//

import Foundation

class Timers : SpeechRecognizer {
  
}


extension SpeechRecognizer {
    @objc func retardator() {
    beganFilterArray()
    comparator()
}

    @objc func correctInco() {
    wordOK()
}

    @objc func incorrectWord() {
    wordBad()
}
    @objc func nextW() {
    nextWord()
        
}
    @objc func olsoWord() {
    sameWord()
}
    @objc func letsGoA() {
    letsGoAgain()
}
    @objc func letRptNumber() {
        numberSoundSP()
}


     func timer() {
    
        _ = Timer.scheduledTimer(timeInterval: 1.1 , target: self, selector: #selector(retardator), userInfo: nil, repeats: false)
   
}

     func correctWordTimer() {
    
        _ = Timer.scheduledTimer(timeInterval: 0.7 , target: self, selector: #selector(correctInco), userInfo: nil, repeats: false)

}

     func incorrectWordTimer() {
    
        _ = Timer.scheduledTimer(timeInterval: 0.6, target: self, selector: #selector(incorrectWord), userInfo: nil, repeats: false)

}

    func nextWordTimer() {
    
        _ = Timer.scheduledTimer(timeInterval: 1 , target: self, selector: #selector(nextW), userInfo: nil, repeats: false)

}

    func sameWordeTimer() {
    
        _ = Timer.scheduledTimer(timeInterval: 2.5 , target: self, selector: #selector(olsoWord), userInfo: nil, repeats: false)

}

   func lestGoAgainTimer() {
        
    _ = Timer.scheduledTimer(timeInterval: 1.3 , target: self, selector: #selector(letsGoA), userInfo: nil, repeats: false)
        
        
    }
    
    func rptNumberTimer() {
         
        _ = Timer.scheduledTimer(timeInterval: 2.8 , target: self, selector: #selector(letRptNumber), userInfo: nil, repeats: false)
         
         
     }
    
}
