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
        
        let srt = self.onlyLetters
        
        // ANSWER SPEECHRECOGNIZER FORMAT ARRAY
        self.answerSpeechArray = srt.components(separatedBy:" ")
        print("\(answerSpeechArray)newa")
        
        // CORRECT NUMBERS ARRAY
        let srt2 = self.elements
        self.baseDataNumberArray = srt2.components(separatedBy:" ")
        
        
        for element in self.baseDataNumberArray {
            for word in self.answerSpeechArray {
                if element == word {
                    self.wordsFiltered.append(word);
                    
                    self.wordsFiltered.removingDuplicate();                  print("\(self.wordsFiltered)if si")
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
                self.displaySpeechLbl.text = self.onlyLetters
                self.displaySpeechLbl.textColor = UIColor.gray
                incorrectWordTimer()
      print("equivocado")
          
               // print("\(self.convertedFiltered) converted \(elements) elements")
            }
        }
   }
}
