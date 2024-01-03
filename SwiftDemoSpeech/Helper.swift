//
//  Helper.swift
//  SwiftDemoSpeech
//
//  Created by Angelos Staboulis on 3/1/24.
//

import Foundation
import AVFoundation
class Helper{
    var utterance:AVSpeechUtterance
    var synthesizer = AVSpeechSynthesizer()
    init(utterance: AVSpeechUtterance, synthesizer: AVSpeechSynthesizer = AVSpeechSynthesizer()) {
        self.utterance = utterance
        self.synthesizer = synthesizer
    }
    func speak(speak:String){
        utterance = AVSpeechUtterance(string: speak)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        utterance.rate = 0.30
        synthesizer.speak(utterance)
    }
}
