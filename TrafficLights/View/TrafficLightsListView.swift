//
//  TrafficLightsView.swift
//  TrafficLights
//
//  Created by Олег Тарасенко on 10/15/20.
//

import SwiftUI

struct TrafficLightsView: View {
    
    @State private var selectCircle = SelectCircle.red
    @State private var colorRed = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    @State private var colorYellow = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    @State private var colorGreen = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    @State private var selectButton = "START"

    private func selectColor() {
        
        switch selectCircle {
        
                case .red:
                    selectButton = "NEXT"
                    colorRed = #colorLiteral(red: 0.3618964553, green: 0.00535113737, blue: 0, alpha: 1)
                    colorYellow = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                    colorGreen = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                    selectCircle = .yellow
                    
                case .yellow:
                    colorRed = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                    colorYellow = #colorLiteral(red: 0.9683473706, green: 0.8943588138, blue: 0.2571321726, alpha: 1)
                    colorGreen = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                    selectCircle = .green
                    
                case .green:
                    colorRed = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                    colorYellow = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
                    colorGreen = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
                    selectCircle = .red
        }
    }
    
    var body: some View {
        
        VStack {
    
            VStack(alignment: .center, spacing: 25, content: {
                
                CircleRedView(color: colorRed)
                CircleYellowView(color: colorYellow)
                CircleGreenView(color: colorGreen)
                
                    Spacer()
    
            })
            
            Button(action: { selectColor() }) {
                    
                Text( "\(selectButton)")
                    
                    .font(.custom( "30", size: 30))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 120)
                    .background(Color.linear)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .shadow(color: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)).opacity(0.7), radius: 20)
            }
        }
        .padding(60)
        .background(Color.radial)
        .edgesIgnoringSafeArea(.all)
    }
   
}

struct TrafficLightsView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightsView()
    }
}
