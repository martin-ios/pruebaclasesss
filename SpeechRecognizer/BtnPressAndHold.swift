//
//  BtnPressAndHold.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 21.12.2020.
//

import Foundation
import UIKit

extension SpeechRecognizer {
    
    
    @objc func handleLongTapOnButton(sender : UIGestureRecognizer){
        
           print("Long tap is handled")
           if sender.state == .began {
               print("recording voice here")
            
          startSpeechRecognization()
            
           }
           else if sender.state == .ended {
             print("stop the recording voice here")
          cancelSpeechRecognization()
            
            //  print("\(words)word btn")
            
            cancelSpeechRecognization()
            timer()
         
          
           }
       }

    func overrideBtn() {
        
        let longGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector (handleLongTapOnButton(sender:  )))
        btnPressHSpeech.addGestureRecognizer(longGestureRecognizer)
        
    }
}
