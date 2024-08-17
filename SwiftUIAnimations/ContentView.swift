//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bell.fill")
                    .font(.largeTitle)
                Text("Silent mode")
            }
            .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            .background(.gray.secondary)
            .cornerRadius(32)
            .offset(y: isShowing ? -200 : 0)
            .onAppear {
                withAnimation(.easeIn.delay(1)) {
                    isShowing.toggle()
                }
            }
            Button("Silent Mode") {
                withAnimation(.easeIn) {
                    isShowing.toggle()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
