//
//  MainScreen.swift
//  pomodoro-timer
//
//  Created by Noyan Alimov on 10/12/2021.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            screen
//            bottomSheet
        }
    }
    
    var bottomSheet: some View {
        VStack {
            HStack {
                ZStack {}
                Spacer()
                Text("Focus Category")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                Spacer()
                Image(systemName: "xmark")
            }
                .padding()
            HStack(alignment: .center, spacing: 20) {
                Category(text: "Work")
                Category(text: "Study")
            }
            HStack(alignment: .center, spacing: 20) {
                Category(text: "Workout", dark: true)
                Category(text: "Reading")
            }
            HStack(alignment: .center, spacing: 20) {
                Category(text: "Meditation")
                Category(text: "Others")
            }
        }
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  alignment: .top
            )
            .background(.white)
            .padding(.bottom, 40)
            .cornerRadius(15)
        
    }
    
    
    
    var screen: some View {
        ZStack(alignment: .center) {
            Image("BG")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 100) {
                focusCategory
                ZStack {
                    ProgressTrack()
                    VStack {
                        Text("25:00")
                            .font(.largeTitle)
                            .bold()
                        Text("Focus on your task")
                    }
                    .foregroundColor(.white)
                }
                actions
            }
        }
    }
    
    var focusCategory: some View {
        ZStack {
            Rectangle()
                .frame(width: 170, height: 36)
                .background(.white)
                .opacity(0.3)
                .cornerRadius(24)
            HStack {
                Image(systemName: "pencil")
                Text("Focus Category")
            }
                .foregroundColor(.white)
        }
    }
    
    var actions: some View {
        HStack(alignment: .center, spacing: 100) {
//            ZStack {
//                Circle()
//                    .fill(.gray)
//                    .opacity(0.5)
//                    .frame(width: 56, height: 56)
//                Image(systemName: "pause")
//                    .foregroundColor(.white)
//                    .font(.title2)
//            }
            ZStack {
                Circle()
                    .fill(.gray)
                    .opacity(0.5)
                    .frame(width: 56, height: 56)
                Image(systemName: "play")
                    .foregroundColor(.white)
                    .font(.title2)
            }
            ZStack {
                Circle()
                    .fill(.gray)
                    .opacity(0.5)
                    .frame(width: 56, height: 56)
                Image(systemName: "stop.fill")
                    .foregroundColor(.white)
                    .font(.title2)
            }
        }
    }
}

struct IconButton: View {
    var iconName: String
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.gray)
                .opacity(0.5)
                .frame(width: 56, height: 56)
            Image(systemName: "stop.fill")
                .foregroundColor(.white)
                .font(.title2)
        }
    }
}

struct Category: View {
    var text: String
    var dark: Bool = false
    var lightColor = Color(red: 244 / 255, green: 244 / 255, blue: 244 / 255)
    var darkColor = Color(red: 47 / 255, green: 47 / 255, blue: 51 / 255)
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.system(size: 20, weight: .semibold, design: .default))
                .foregroundColor(dark ? .white : .black)
                
        }
        .frame(width: 160, height: 80, alignment: .center)
        .background(dark ? darkColor : lightColor)
        .cornerRadius(16)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
