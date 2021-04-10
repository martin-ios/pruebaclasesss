//
//  Animation.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 02.03.2021.
//

//import Foundation
import UIKit

extension SpeechRecognizer {
    
    
    func buttonHoldAnimation() {
            
            let pulse = CASpringAnimation(keyPath: "transform.scale.xy")
        pulse.duration = 1.25
            pulse.fromValue = 0.75
            pulse.toValue = 1.0
            pulse.autoreverses = true
            pulse.repeatCount = 1
        pulse.initialVelocity = 0.1
        pulse.damping = 0
        btnPressHSpeech.layer.add(pulse, forKey: nil)
        
        let opacityPulse = CAKeyframeAnimation(keyPath: "opacity")
        opacityPulse.duration = 1
        opacityPulse.repeatCount = 1
        opacityPulse.autoreverses = true
       
        opacityPulse.values = [0.1, 0.8, 0.5]
        opacityPulse.keyTimes = [0, 0.5, 1]
        btnPressHSpeech.layer.add(opacityPulse, forKey: nil)
        
    }
}
