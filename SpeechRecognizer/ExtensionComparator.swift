//
//  ExpandSpeech.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 11.12.2020.
//

import Foundation
import UIKit
extension SpeechRecognizer {
  

    func beganFilterArray() {
        
        firstFilter()
    
        let srt = self.onlyLeters
        
        self.newArray = srt.components(separatedBy:" ")
        print("\(newArray)newa")
       
        let srt2 = self.elements
        self.newArray2 = srt2.components(separatedBy:" ")
        
     
        for element in self.newArray2 {
            for word in self.newArray {
                if element == word {
                    self.filtered.append(word);
                    
                    self.filtered.removingDuplicate();                  print("\(self.filtered)if si")
                }
            }
        }
 
    }
    
    
    func comparator() {
        let arrayZ = ""
        
        guard onlyLeters != arrayZ else {
             self.filtered = ["Error"]; print("\(filtered)");
                silense()
       return }
  
        self.convertedFiltered = self.filtered.concatenate()
        self.lblSpeech.text = self.convertedFiltered
        
        
        if self.convertedFiltered == elements {
            self.lblSpeech.text = self.convertedFiltered
            self.lblSpeech.textColor = UIColor.gray
            resetParola()
            correctWordTimer()
            lblArraySpeech.text = aray[0]
        } else {
            self.lblSpeech.text = self.onlyLeters
            self.lblSpeech.textColor = UIColor.gray
            incorrectWordTimer()
            self.lblArraySpeech.text = self.aray[0]
            resetParola()
            
        }
    }
}
