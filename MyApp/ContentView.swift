//
//  ContentView.swift
//  MyApp
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI
struct ContentView: View {
    
    @State private var titleText = "Hi! Welcome to my app. Find out more about me."
   @State private var imageName = "Duck II"
    
    var body: some View {
        
        ZStack {
            Color(.systemIndigo)
                .ignoresSafeArea()
            
            VStack (spacing:100){
                Text(titleText)
                    .font(.title)
                
                
                Image(imageName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
                
                    .multilineTextAlignment(.center)
                    .font(.title)
                
                Button("Discover a Lila fact") {
                    // print(name)
                    titleText = "When I am feeling down, I love watching the film 'Howl's Moving Castle' to cheer me up! "
               
                    imageName = "Howl"
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                
            }  .padding().background(Rectangle().foregroundColor(.white))
            
                .cornerRadius(15)
                .padding()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
