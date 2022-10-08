//
//  WeatherButton.swift
//  firstApp
//
//  Created by Hugo on 8.10.22.
//

import SwiftUI

struct WeatherButtonView: View {
    
    var buttonText: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
            Text(buttonText)
                .frame(width: 280.0, height: 50.0)
                .background(backgroundColor)
                .foregroundColor(textColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(10.0)
        }
    }
