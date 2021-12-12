//
//  ProgressTrack.swift
//  pomodoro-timer
//
//  Created by Noyan Alimov on 10/12/2021.
//

import SwiftUI

struct ProgressTrack: View {
    var body: some View {
        Circle()
            .stroke(Color.white, lineWidth: 6)
            .opacity(0.3)
            .frame(width: 250, height: 250)
            .overlay(
                Circle()
                    .trim(from: 0, to: 0.75)
                    .stroke(Color.white, lineWidth: 6)
                    .rotationEffect(.degrees(270))
            )
    }
}

struct ProgressTrack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Image("BG")
            ProgressTrack()
        }
    }
}
