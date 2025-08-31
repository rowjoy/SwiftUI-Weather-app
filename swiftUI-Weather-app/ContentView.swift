//
//  ContentView.swift
//  swiftUI-Weather-app
//
//  Created by Jamirul Islam on 26/8/25.
//

// https://youtu.be/b1oC7sLIgpI?si=LbH2Wj_sHHo-tejZ
// 1:49:24


import SwiftUI

struct ContentView: View {
    
    @State private var isNightMode: Bool = false
    
    var body: some View {
        ZStack{
            BackgroundViews(isNightMode: $isNightMode)
            VStack{
                CityView(cityName: "Cupcaketown , CA")
                MainWeatherStatus(
                    iconName: isNightMode ? "moon.stars.fill" : "cloud.sun.bolt.fill",
                    temperature: 25,
                )
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
                WeatherButtonView(
                    buttonName: "Next 7 Days",
                    action: {
                        isNightMode.toggle()
                        print("Tabbed")
                    }
                )
                Spacer()

                    
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
                .symbolRenderingMode(.multicolor)
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

struct BackgroundViews: View {
    @Binding var isNightMode : Bool
    var body: some View {
        LinearGradient(
            colors: [isNightMode ? .black  : .blue, isNightMode ? .gray :   Color("lightBlue")],
            startPoint: .topTrailing,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}



struct CityView: View {
    var cityName : String
    var body: some View{
        Text(cityName)
             .font(.system(size: 32, weight: .bold,
                           design: .default))
             .foregroundColor(.white)
             .padding()
    }
}


struct MainWeatherStatus : View{
    var iconName : String = "cloud.sun.rain.fill"
    var temperature : Int = 0
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: iconName)
                .symbolRenderingMode(.multicolor)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
