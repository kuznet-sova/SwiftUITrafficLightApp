//
//  ContentView.swift
//  SwiftUITrafficLightApp
//
//  Created by Ирина Кузнецова on 20.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonName = "START"
    @State private var alphaRed: CGFloat = 0.3
    @State private var alphaYellow: CGFloat = 0.3
    @State private var alphaGreen: CGFloat = 0.3
    @State private var currentColor: UIColor = .clear
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                ColorView(color: .red, alpha: alphaRed)
                ColorView(color: .yellow, alpha: alphaYellow)
                ColorView(color: .green, alpha: alphaGreen)
                    .padding(.bottom)
                
                Spacer()
                
                Button(action: { self.trafficLightLogic() }) {
                    Text(buttonName)
                        .font(.title)
                        .frame(width: 150, height: 50)
                        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 3))
                }
                .padding(.bottom, 10)
            }
            .padding()
        }
    }
    
    private func trafficLightLogic() {
        buttonName = "NEXT"
        
        switch currentColor {
        case .red:
            alphaRed = 0.3
            alphaYellow = 1
            currentColor = .yellow
        case .yellow:
            alphaYellow = 0.3
            alphaGreen = 1
            currentColor = .green
        default:
            alphaGreen = 0.3
            alphaRed = 1
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
