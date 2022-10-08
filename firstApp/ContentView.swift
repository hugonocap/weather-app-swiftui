//
//  ContentView.swift
//  firstApp
//
//  Created by Hugo on 8.10.22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack { // background color
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                            .ignoresSafeArea()
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32.0, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180.0, height: 180.0)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
