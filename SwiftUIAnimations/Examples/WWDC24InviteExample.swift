//
//  WWDC24InviteExample.swift
//  SwiftUIAnimations
//
//  Created by Burak Kurtarır on 16.08.2024.
//

import SwiftUI

struct WWDC24InviteExample: View {
    var body: some View {
        ZStack {
            Image(.wwdc24Invite)
                .resizable()
                .scaledToFit()
                .phaseAnimator([false, true]) { wwdc24, chromaRotate in
                    wwdc24
                        .hueRotation(.degrees(chromaRotate ? 420 : 0))
                } animation: { chromaRotate in
                        .easeInOut(duration: 2)
                }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    WWDC24InviteExample()
        .preferredColorScheme(.dark)
}
