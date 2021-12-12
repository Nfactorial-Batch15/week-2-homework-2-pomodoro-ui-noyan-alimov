//
//  ContentView.swift
//  pomodoro-timer
//
//  Created by Noyan Alimov on 10/12/2021.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        TabView {
            MainScreen()
                .tabItem {
                    Image(systemName: "house")
                    Text("Main")
                }
            
            SettingsScreen()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings")
                }
            
            HistoryScreen()
                .tabItem {
                    Image(systemName: "doc")
                    Text("History")
                }
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
