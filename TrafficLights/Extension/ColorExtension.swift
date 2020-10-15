//
//  ColorExtension.swift
//  TrafficLights
//
//  Created by Олег Тарасенко on 10/16/20.
//

import SwiftUI

extension Color {
    
    static let linear = LinearGradient(gradient: Gradient(colors:[Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)),Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))]),
                                       startPoint: .leading, endPoint: .trailing)
    static let radial = RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))]),
                                       center: .center, startRadius: 2, endRadius: 650)

}
