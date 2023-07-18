//
//  ContentView.swift
//  RevvIt 2.0
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var promptRandom = ""
    
        let prompts = ["Talk About the World", "Spend 15 minutes talking about turtles", "talk about your childhood home", "why did you open the app", "are you going to see the new barbie movie", "chicken"
                    
    ]

    
    
    var body: some View {
       
        ZStack {
          
            Color(hex: "#F6EFE8")
                .ignoresSafeArea()
         
            
         
            
            
            VStack {
                
                Text("Journal")
                    .multilineTextAlignment(.leading)
                

                
                Button("New Prompt") {
                    
                    
                    let random = Int.random (in:1..<6)
                    let prompt = prompts[random]
                    promptRandom = prompt
            

                    
                } //button
                Text (promptRandom)
                
                
                HStack {
                    
                    
                    
                    
            
                } //Hstack
                
                
                
                
            } //vstack
            
            
            
            
        } //zstack
        
        
        
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


