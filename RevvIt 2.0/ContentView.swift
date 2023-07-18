//
//  ContentView.swift
//  RevvIt 2.0
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var promptRandom = ""
    
        var prompts = ["prompt 1", "prompt 2", "prompt 3", "prompt 4", "prompt 5", "prompt 6"
                    
    ]

    
    
    var body: some View {
       
        ZStack {
            
            VStack {
                
                Text("Journal")
                    .multilineTextAlignment(.leading)
                
                
                
                Button("New Prompt") {
//                    var randomPrompt = Int.random (
                    
                }
                
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
