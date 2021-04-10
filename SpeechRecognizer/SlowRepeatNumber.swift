//
//  SlowRepeatNumber.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 10.04.2021.
//

import Foundation
import AVFoundation



extension SpeechRecognizer {
    
    func slowRepeatAudio()  {
        
        let filename = aray[0]
        
        let path = Bundle.main.path(forResource: filename , ofType: "wav")!
        let url = NSURL.fileURL(withPath: path)
        // 1: load the file
        let file = (try? AVAudioFile(forReading: url))!

        // 2: create the audio player
        let audioPlayer = AVAudioPlayerNode()

        // 3: connect the components to our playback engine
        engine.attach(audioPlayer)
        engine.attach(pitchControl)
        engine.attach(speedControl)

        // 4: arrange the parts so that output from one is input to another
        engine.connect(audioPlayer, to: speedControl, format: nil)
        engine.connect(speedControl, to: pitchControl, format: nil)
        engine.connect(pitchControl, to: engine.mainMixerNode, format: nil)

        // 5: prepare the player to play its file from the beginning
        audioPlayer.scheduleFile(file, at: nil)

        // 6: start the engine and player
        try? engine.start()
        audioPlayer.play()
    }
    
}
