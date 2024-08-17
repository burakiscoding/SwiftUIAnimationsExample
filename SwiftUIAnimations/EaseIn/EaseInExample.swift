//
//  EaseInExample.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 15.08.2024.
//

import SwiftUI

struct EaseInExample: View {
    @State private var isSilentModeOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: isSilentModeOn ? "bell.slash.fill" : "bell.fill")
                    .font(.largeTitle)
                Text("Silent mode \(isSilentModeOn ? "ON" : "OFF")")
            }
            .padding(EdgeInsets(top: 4, leading: 16, bottom: 4, trailing: 16))
            .background(.gray.secondary)
            .cornerRadius(32)
            .offset(y: isSilentModeOn ? -200 : 0)
            Button("Set silent mode \(isSilentModeOn ? "OFF" : "ON")") {
                withAnimation(.easeIn) {
                    isSilentModeOn.toggle()
                }
            }
        }
    }
}

#Preview {
    EaseInExample()
}
