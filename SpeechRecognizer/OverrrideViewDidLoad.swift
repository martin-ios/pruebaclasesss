//
//  OverrrideViewDidLoad.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 11.04.2021.
//

import Foundation
import AVFoundation
import UIKit
import Speech

extension SpeechRecognizer {
  
    func setAudioSession(){
        
        //MARK: - AUDIOS
        let recordingSession = AVAudioSession.sharedInstance()
        do {
            // Set the audio session category, mode, and options.
            try recordingSession.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker])
            try recordingSession.setActive(true)
        } catch {
            print("Failed to set audio session category.")
        }
        do {
            let alertCorrect = Bundle.main.path(forResource: "correctSound", ofType: "mp3")
            try alertWordCorr = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: alertCorrect!) as URL)
            
            let alertIncorrect = Bundle.main.path(forResource: "incorrecSound", ofType: "mp3")
            try alertWordInco = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: alertIncorrect!) as URL)
            
        }
        catch {// ERROR
        }
        
        
        
    }
    

    }

    
    
