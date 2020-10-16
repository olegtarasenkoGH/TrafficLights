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

struct CircleRedView: View {
    var color: UIColor
    var body: some View {
        
        Color(color)
            
            .frame(width: 140, height: 140, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)).opacity(0.5), radius: 15)
            .padding(.top, 30)
    }
}

struct CircleYellowView: View {
    var color: UIColor
    var body: some View {
        
        Color(color)
            
            .frame(width: 140, height: 140, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(color: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)).opacity(0.5), radius: 15)
        
    }
}

struct CircleGreenView: View {
    var color: UIColor
    var body: some View {
        
        Color(color)
            
            .frame(width: 140, height: 140, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(color: Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)).opacity(0.5), radius: 15)
        
    }
}

