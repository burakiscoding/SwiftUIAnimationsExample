//
//  StackedRectanglesExample.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

struct StackedRectanglesExample: View {
    let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple]
    @State private var isMoving = false
    
    var body: some View {
        ZStack {
            ForEach(0..<colors.count, id: \.self) {
                Rectangle()
                    .fill(colors[$0])
                    .frame(width: 100, height: 100)
                    .offset(x: isMoving ? CGFloat($0) * 25.0 : CGFloat($0) * -25.0,
                            y: CGFloat($0) * 10.0)
            }
            .onAppear {
                withAnimation(.easeInOut(duration: 2).delay(0.5).repeatForever(autoreverses: true)) {
                    isMoving.toggle()
                }
            }
            
        }
    }
}

#Preview {
    StackedRectanglesExample()
}
