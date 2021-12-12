//
//  HistoryScreen.swift
//  pomodoro-timer
//
//  Created by Noyan Alimov on 10/12/2021.
//

import SwiftUI

struct HistoryScreen: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                Text("History")
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                
                Day(date: "21.11.21", focusTime: "25:00", breakTime: "05:00", sessions: "2")
                Day(date: "21.11.21", focusTime: "25:00", breakTime: "05:00", sessions: "2")
                Day(date: "21.11.21", focusTime: "25:00", breakTime: "05:00", sessions: "2")
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        .background(Color(red: 28/255, green: 28/255, blue: 30/255))
    }
}

struct Day: View {
    var date: String
    var focusTime: String
    var breakTime: String
    var sessions: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(date)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.semibold)
            Line(label: "Focus time", value: focusTime)
            Line(label: "Break time", value: breakTime)
            Line(label: "Sessions", value: sessions)
        }
        .padding()
    }
}

struct Line: View {
    var label: String
    var value: String
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(.white)
            Spacer()
            Text(value)
                .foregroundColor(.gray)
        }
            .padding(.top, 12)
        
        Divider()
            .background(.gray)
    }
}

struct HistoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        HistoryScreen()
    }
}
