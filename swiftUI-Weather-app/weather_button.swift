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
                    .frame(width: width, height: height)
                    .background(background)
                    .font(.system(size: 20, weight: .bold,design: .default))
                    .cornerRadius(cornerRadius)
               
            }
        )
    }
}

