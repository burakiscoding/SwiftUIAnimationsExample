//
//  EaseInOutExample.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 15.08.2024.
//

import SwiftUI

struct EaseInOutExample: View {
    @State private var angle = 0.0
    @State private var scale = 0.25
    
    var body: some View {
        VStack() {
            Image(systemName: "star.fill")
            .font(.system(size: 200))
            .foregroundColor(Color.green)
            .rotationEffect(.degrees(1 * angle))
            .scaleEffect(CGFloat(scale))
            .hueRotation(.degrees(angle))
            .blendMode(.difference)
            .animation(.easeInOut(duration: 4).delay(1).repeatForever(autoreverses: true), value: angle)
            .onAppear {
                angle = 360
                scale = 1
            }
        }
    }
}

#Preview {
    EaseInOutExample()
}
