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
            Color.gray
                .ignoresSafeArea()
        }
        
        Text("hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
