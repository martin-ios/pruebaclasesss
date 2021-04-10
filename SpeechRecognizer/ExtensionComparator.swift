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
        
        // Respues de SP en formato Array
         answerSpeechArray = srt.components(separatedBy:" ")
          print("\(answerSpeechArray) print answerSpeechArray")
       
        // Array Numeros correctos
        let srt2 = self.elements
         baseDataNumberArray = srt2.components(separatedBy:" ")
        
        for element in baseDataNumberArray {
            for word in answerSpeechArray {
                if element == word {
                    wordsFiltered.append(word);
                   print("\(wordsFiltered) print wordsFiltered ")
             //  let removeDuplicatedWord = self.filtered.removingDuplicate()
                }
            }
        }
 
    }
    
    
    func comparator() {
 
        self.concatenateWordsFiltered = self.wordsFiltered.concatenate()
        
        print("\(concatenateWordsFiltered) concatenate")
        
        if self.concatenateWordsFiltered == self.elements
            && self.concatenateWordsFiltered != ""  {
            self.displaySpeechLbl.text = concatenateWordsFiltered
            self.displaySpeechLbl.textColor = UIColor.gray
            correctWordTimer()
            print("correcto")
        } else {
            if self.answerSpeechArray == [""] {
                silence()
             print("silencio")
            }
            else {
                self.displaySpeechLbl.text = self.onlyLeters
                self.displaySpeechLbl.textColor = UIColor.gray
                incorrectWordTimer()
      print("equivocado")
          
               // print("\(self.convertedFiltered) converted \(elements) elements")
            }
        }
    }
    
    
    
    
    
}
