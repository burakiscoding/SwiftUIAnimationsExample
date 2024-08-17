//
//  CirclesAnimationExample.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

struct CirclesAnimationExample: View {
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                ForEach(0..<30) { index in
                    CircleView(delay: 0.2 * Double(index))
                }
            }
            Spacer()
        }
    }
}

struct CircleView: View {
    let delay: TimeInterval
    @State private var isMoving: Bool = false
    
    var body: some View {
        Circle()
            .stroke(style: StrokeStyle(lineWidth: 3))
            .foregroundStyle(Color.red)
            .frame(width: 100, height: 100)
            .rotation3DEffect(.degrees(70), axis: (x: 1, y: 0, z: 0))
            .transformEffect(.init(translationX: 0, y: isMoving ? 200 : 0))
            .scaleEffect(isMoving ? 3 : 1)
            .hueRotation(.degrees(isMoving ? 420 : 0))
            .animation(.linear(duration: 3).delay(delay), value: isMoving)
            .onAppear {
                isMoving = true
            }
    }
}

#Preview {
    CirclesAnimationExample()
}
