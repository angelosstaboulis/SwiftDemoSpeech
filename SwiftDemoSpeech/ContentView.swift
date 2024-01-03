//
//  ContentView.swift
//  SwiftDemoSpeech
//
//  Created by Angelos Staboulis on 2/1/24.
//

import SwiftUI
import Combine
import AVFAudio
import CoreAudio
import AVFoundation
import MediaPlayer
import Speech
import AudioUnit
import AudioToolbox

struct ContentView: View {
    @State var speak = Helper(utterance: .init())
    @State var phrase:String
    var body: some View {
        VStack {
            Text("Enter a phrase").frame(width:300,height:45,alignment:.leading)
            TextField("Enter a phrase", text: $phrase).frame(width:300,height:45)
            Button(action: {
                speak.speak(speak: phrase)
            }) {
                Text("Convert Text to Speech")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            
            
        }
    }
    
  
 
}

#Preview {
    ContentView(phrase: "")
}


