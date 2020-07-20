//
//  ColorView.swift
//  SwiftUITrafficLightApp
//
//  Created by Ирина Кузнецова on 20.07.2020.
//  Copyright © 2020 Irina Kuznetsova. All rights reserved.
//

import SwiftUI

struct ColorView: View {
    let color: UIColor
    let alpha: CGFloat
    
    var body: some View {
        Color(color.withAlphaComponent(alpha))
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color .white, lineWidth: 3))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .clear, alpha: 0)
    }
}
