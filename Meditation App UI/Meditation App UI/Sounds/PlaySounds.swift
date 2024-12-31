//
//  PlaySounds.swift
//  Meditation App UI
//
//  Created by Prinon bhowmik on 1/1/25.
//

import Foundation
import AVFoundation

class PlaySounds {
    private var audioPlayer : AVAudioPlayer?
    
    func playSound(name: String, ext: String = "mp3") {
        guard let soundURL = Bundle.main.url(forResource: name, withExtension: ext) else {
            return
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func stopSound() {
        audioPlayer?.stop()
    }
}
