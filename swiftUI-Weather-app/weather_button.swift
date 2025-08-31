//
//  weather_button.swift
//  swiftUI-Weather-app
//
//  Created by Jamirul Islam on 28/8/25.
//

import SwiftUI
struct WeatherButtonView : View {
    var buttonName : String
    var action : () -> Void = { }
    var background : Color = Color(.white)
    var cornerRadius : CGFloat = 10
    var width : CGFloat = 280
    var height : CGFloat = 50
    
    var body: some View {
        
        Button(
            action: action,
            label: {
               Text(buttonName)
                    .frame( width: width,  height: height)
                    .background(background)
                    .font(.system(size: 20, weight: .bold,design: .default))
                    .cornerRadius(cornerRadius)
               
            }
        )
    }
}




struct golobalAppButton : View {
    var body: some View {
        Button("Get Forecast"){
            for i in 1...100000 {
                print("\(i) th iteration");
            }
            print("You cleck me");
        }
        .frame(maxWidth: .infinity, maxHeight: 55 )
        .background(Color(.red))
        .foregroundColor(Color(.white))
        .font(.system(size: 20, weight: .bold,design: .default))
        .cornerRadius(10)
        .padding(10)
        
    }
}




struct preview_weather_button : PreviewProvider {
    static var previews: some View {
        golobalAppButton()
    }
}

