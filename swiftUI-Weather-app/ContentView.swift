//
//  ContentView.swift
//  swiftUI-Weather-app
//
//  Created by Jamirul Islam on 26/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
            LinearGradient(
                colors: [.blue, Color("lightBlue")],
                startPoint: .topTrailing,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack{
               Text("Current Weat , CA")
                    .font(.system(size: 32, weight: .bold,
                                  design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("28°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                HStack(spacing: 20,){
                    WeatherDayView(
                        dayOfWeek: "TUE",
                        imageName: "cloud.sun.bolt.fill",
                        temperature: 30
                    )
                    WeatherDayView(
                        dayOfWeek: "WED",
                        imageName: "cloud.bolt.rain.fill",
                        temperature: 20
                    )

                    WeatherDayView(
                        dayOfWeek: "THU",
                        imageName: "cloud.sleet.fill",
                        temperature: 50
                    )

                    WeatherDayView(
                        dayOfWeek: "FRI",
                        imageName: "cloud.sun.bolt.fill",
                        temperature: 100
                    )

                    WeatherDayView(
                        dayOfWeek: "SAT",
                        imageName: "sunrise.fill",
                        temperature: 45
                    )

                }
                
                Spacer()
                
                Button() {
                   print("Button Tapped")
                } label: {
                   Text("Get Forecast")
                }

                    
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(.white)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium))
            
        }
    }
}
