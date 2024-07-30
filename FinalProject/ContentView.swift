//
//  ContentView.swift
//  FinalProject
//
//  Created by SriSai on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            HomeScreen().tabItem { Text("Home")
                
            }.padding()
            
            CalendarScreen().tabItem { Text("Calendar") }.padding()
            
            MentalHealthScreen().tabItem { Text("Mental Health") }.padding()
        }
    }
}

#Preview {
    ContentView()
}
