//
//  BtnPressHold.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 26.12.2020.
//

import Foundation
import UIKit
extension SpeechRecognizer {
    
    
    @objc func handleLongTapOnButton(sender : UIGestureRecognizer){
        
           print("Long tap is handled")
           if sender.state == .began {
               print("recording voice here")
           
          startSpeechRecognization()
            print("\(aray)")
            
           }
           else if sender.state == .ended {
             print("stop the recording voice here")
          cancelSpeechRecognization()
            
            //  print("\(words)word btn")
            timer()
         
          
           }
       }

    func overrideBtn() {
        
        let longGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector (handleLongTapOnButton(sender:  )))
        btnPressHSpeech.addGestureRecognizer(longGestureRecognizer)
        
    }
    
    func pulsante() {
            
            let pulse = CASpringAnimation(keyPath: "transform.scale.xy")
        pulse.duration = 1
            pulse.fromValue = 0.75
            pulse.toValue = 1.0
            pulse.autoreverses = true
            pulse.repeatCount = 1
            pulse.initialVelocity = 1
        pulse.damping = 0
        btnPressHSpeech.layer.add(pulse, forKey: nil)
        
        let opacityPulse = CAKeyframeAnimation(keyPath: "opacity")
        opacityPulse.duration = 1
        opacityPulse.repeatCount = 1
        opacityPulse.autoreverses = true
       
        opacityPulse.values = [0.1, 0.8, 1]
        opacityPulse.keyTimes = [0, 0.5, 1]
        btnPressHSpeech.layer.add(opacityPulse, forKey: nil)
        
        
        }
}

