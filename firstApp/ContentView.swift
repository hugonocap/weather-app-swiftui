//
//  ContentView.swift
//  firstApp
//
//  Created by Hugo on 8.10.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            // background color
            BackgroundView(isNight: $isNight)
            
            VStack {
                // City
                CityTextView(cityName: "Cupertino, CA")
                // main weather
                MainWeatherStatusView(weather: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 80)
                // week temperature
                HStack(spacing: 24.0) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 80)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 89)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind",
                                   temperature: 77)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.drizzle.fill",
                                   temperature: 74)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 75)
                }
                Spacer()
                // button
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButtonView(buttonText: "Change Day time",
                                      backgroundColor: .white,
                                      textColor: .blue)
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

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10.0) {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40.0, height: 40.0)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32.0, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var weather: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10.0) {
            Image(systemName: weather)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180.0, height: 180.0)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 80.0)
    }
}
