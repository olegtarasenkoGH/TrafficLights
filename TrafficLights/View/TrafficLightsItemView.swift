//
//  CircleView.swift
//  TrafficLights
//
//  Created by Олег Тарасенко on 10/15/20.
//

import SwiftUI

enum SelectCircle {
    case red
    case yellow
    case green
}

struct CircleView: View {
    var color: UIColor
    var body: some View {
        
        Color(color)
            
            .frame(width: 140, height: 140, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(color: Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)).opacity(1.5), radius: 20)

    }
}

struct TrafficLightsItemView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    }
}
