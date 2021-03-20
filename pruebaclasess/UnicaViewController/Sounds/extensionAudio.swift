//
//  extensionAudio.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 16.11.2020.
//

import Foundation
import UIKit
import AVFoundation

extension UnicaViewController {
    
    
      func numberSound() {
    let filename = descriptionG?[counterF]
    guard let url = Bundle.main.url(forResource: filename, withExtension: "wav") else { return }
    
    do {  //try AVAudioSession.sharedInstance().setCategory(.playback)
       // try AVAudioSession.sharedInstance().setActive(true)
        
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
        guard let player = player else { return }
        player.play()
    } catch {
        print("\(error) error in sounds")
    }
}
  
    
}
 



