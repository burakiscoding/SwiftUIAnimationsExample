//
//  AnimationCompletionExample.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 15.08.2024.
//

import SwiftUI

struct AnimationCompletionExample: View {
    @State private var isLiked = false
    @State private var isDisliked = false
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.interpolatingSpring(
                    stiffness: 170, damping: 10)) {
                        isLiked = true
                    } completion: {
                        withAnimation(.bouncy(extraBounce: 0.4)) {
                            isLiked = false
                        }
                    } 
            } label: {
                Image(systemName: "hand.thumbsup")
                    .font(.system(size: 44))
                    .foregroundStyle(Color.blue)
                    .rotationEffect(.degrees(isLiked ? -45 : 0), anchor: .bottomLeading)
                    .scaleEffect(isLiked ? 2 : 1)
            }
            Button {
                withAnimation(.interpolatingSpring(
                    stiffness: 170, damping: 10)) {
                        isDisliked = true
                    } completion: {
                        withAnimation(.bouncy(extraBounce: 0.4)) {
                            isDisliked = false
                        }
                    }
            } label: {
                Image(systemName: "hand.thumbsdown")
                    .font(.system(size: 44))
                    .foregroundStyle(Color.blue)
                    .rotationEffect(.degrees(isDisliked ? -45 : 0), anchor: .topTrailing)
                    .scaleEffect(isDisliked ? 2 : 1)
            }
        }
    }
}

#Preview {
    AnimationCompletionExample()
}
