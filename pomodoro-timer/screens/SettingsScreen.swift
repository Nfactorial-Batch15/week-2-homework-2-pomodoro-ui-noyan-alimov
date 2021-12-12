//
//  SettingsScreen.swift
//  pomodoro-timer
//
//  Created by Noyan Alimov on 10/12/2021.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        VStack {
            Text("Settings")
                .foregroundColor(.white)
                .font(.title3)
                .bold()
            
            VStack {
                Row(label: "Focus time", value: "25:00")
                
                Row(label: "Break time", value: "05:00")
                
                Row(label: "Sessions", value: "2")
            }
                .padding(.top, 34)
                .padding(.horizontal)
            
            Spacer()
        }
        .background(.black)
        .opacity(0.9)
    }
}

struct Row: View {
    var label: String
    var value: String
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(.white)
            Spacer()
            ZStack {
                TextField("", text: .constant(value))
                    .keyboardType(.numberPad)
                    .accentColor(.white)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.trailing)
            }
            .frame(width: 60, alignment: .trailing)
        }
            .padding(.top, 12)
        
        Divider()
            .background(.gray)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
