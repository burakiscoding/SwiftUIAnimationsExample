//
//  LinearExample2.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 15.08.2024.
//

import SwiftUI

struct LinearExample2: View {
    let sunHue = Color(#colorLiteral(red: 0.9921329618, green: 0.7381216884, blue: 0, alpha: 1))
    let duoYellow = Color(#colorLiteral(red: 1, green: 0.8631185889, blue: 0, alpha: 1))
    
    @State private var isSpinning = false
    @State private var isDrawing = false
    @State private var isMoving = false
    
    var body: some View {
        VStack(alignment: .trailing) {
            Image(systemName: "moon.circle")
                .font(.title)
            
            ZStack {
                HStack {
                    Circle()
                        .frame(width: 10, height: 10)
                    Spacer()
                    Circle()
                        .frame(width: 10, height: 10)
                }
                .padding(11)
                .foregroundColor(duoYellow)
                
                VStack {
                    ZStack {
                        Circle()
                            .trim(from: 1/2, to: 1)
                            .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round, dash: [7, 7]))
                            .fill(.secondary)
                            .frame(width: 350, height: 350)
                            .padding()
                        
                        Circle()
                            .trim(from: 1/2, to: isDrawing ? 1 : 0.2)
                            .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round, dash: [7, 7]))
                            .fill(duoYellow)
                            .frame(width: 350, height: 350)
                            .padding()
                            .animation(.easeOut.repeatCount(1).speed(0.15), value: isDrawing)
                        
                        Text("Wind 10,5 km/h SW")
                            .font(.headline)
                            .padding(.top, -140)
                        
                        Image(systemName: "sun.max.fill")
                            .font(.title)
                            .foregroundColor(sunHue)
                            .offset(x: -176)
                            .rotationEffect(.degrees(isMoving ? 180 : 0))
                            .padding(.horizontal, -12)
                            .animation(.easeInOut.repeatCount(1).speed(0.15), value: isMoving)
                    }
                    
                    HStack {
                        Text("04:40")
                        Spacer()
                        Text("22:12")
                    }
                    .padding(.top, -180)
                }
                .onAppear{
                    isSpinning.toggle()
                    isDrawing.toggle()
                    isMoving.toggle()
                }
            }
        }
        .padding()
    }
}

#Preview {
    LinearExample2()
        .preferredColorScheme(.dark)
}
