//
//  ExtensionNextWordsSound.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 11.04.2021.
//

import Foundation
import AVFoundation

extension SpeechRecognizer {
    
   // MARK: - FOWARD NUMBER
    
    
    func numberSoundSP() {
        
        let filename = aray[0]
        guard let url = Bundle.main.url(forResource: filename, withExtension: "wav") else { return }
        
        do {
            playerSP = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            guard let player = playerSP else { return }
            player.play()
        } catch {
            print("\(error) error in sounds")
        }
    }
    
    
    //MARK: - AUDIOS SESSION
    func setAudioSession(){
        
        
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
