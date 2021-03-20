//
//  File.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 10.11.2020.
//

import Foundation
import UIKit

extension UILabel {
    
    func DesignLblTitle() {
        
                self.font = self.font.withSize(25)
        self.textColor = UIColor.white
                self.layer.cornerRadius =  10
                self.layer.masksToBounds = true
                self.layer.backgroundColor = UIColor.orange.cgColor
                self.layer.shadowRadius = 10
                self.layer.shadowColor = UIColor.white.cgColor
                self.layer.shadowOffset = CGSize (width: 5, height: 5)

                self.layer.shadowOpacity = 1

        }
     
    func desingLbl2() {

                self.textColor = UIColor.black
                self.layer.cornerRadius =  self.frame.height / 2
                self.layer.masksToBounds = true
                self.layer.backgroundColor = UIColor.white.cgColor
                self.layer.shadowRadius = 60
                self.layer.shadowColor = UIColor.black.cgColor
                self.layer.shadowOffset = CGSize (width: 0, height: 0)  
                self.layer.shadowOpacity = 0.6
    
         }
    
    
    func desingLblRpt() {
        self.textColor = UIColor.gray
        
        self.text = "Repetir"
        
         }
  
    func desingDescripLbl() {
        
        self.font = self.font.withSize(30)
    }
    
    func lblSpeech() {
        
        self.layer.cornerRadius = 10
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowRadius = 4
        self.layer.shadowOpacity = 0.25
        
    }
    func desinglblLabagna() {
        self.layer.cornerRadius = 10
        self.layer.backgroundColor = UIColor.black.cgColor
        
        
    }
    
}

extension UIView {

func desingView() {

               self.backgroundColor = UIColor(named: "CustomGrayLight")
               self.layer.cornerRadius = 10
           //  self.layer.masksToBounds = true
         //    self.layer.backgroundColor = UIColor.gray.cgColor
         //    self.layer.shadowRadius = 30
           //  self.layer.shadowColor = UIColor.yellow.cgColor
          //   self.layer.shadowOffset = CGSize (width: 20, height: 10)
          //   self.layer.shadowOpacity = 1
       }

    func designBtnRepetir() {
        
        self.layer.backgroundColor = UIColor.white.cgColor
        self.layer.cornerRadius =  26
     //   self.layer.masksToBounds = true
    
  }

    func desingViewSpeech() {
        
        self.backgroundColor = UIColor(named: "CustomGrayLight")
        self.layer.cornerRadius = 10
        
    }
    
    
}
extension UIButton {
    
    func desingBtnRpt() {
        
        self.layer.opacity = 0.5
        self.setTitleColor(UIColor(named: "CustomGrayLight"), for: .normal)
        self.isEnabled = true
        
    }
    
     func desingBtn() {
        self.setTitleColor(UIColor.systemOrange, for: .normal)
                self.layer.cornerRadius =  self.frame.height / 2
                self.layer.masksToBounds = true
                self.layer.backgroundColor = UIColor.white.cgColor
                self.layer.shadowRadius = 50
                self.layer.shadowColor = UIColor.darkGray.cgColor
                self.layer.shadowOffset = CGSize(width: 20, height: 20)
                self.layer.shadowOpacity = 1
    }

    func desingbtnSpeech() {
        
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor(named: "BtnSpeechRed")
        
    }
    
}



extension UINavigationController {
    
    
    func tulbar() {
        
        self.navigationBar.barTintColor = UIColor(named: "CustomGrayLight")
        
    }
    
    
    
    
    
}

