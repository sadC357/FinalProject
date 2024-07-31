//
//  HomeScreen.swift
//  FinalProject
//
//  Created by SriSai on 7/30/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(spacing: 20) { // Adds spacing between elements.
                    
                    // Main Image
                    Image("style2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 350)
                    
                    // Title
                    Text("Hello User!")
                        .font(.title)
                        .fontWeight(.bold)
                        .bold()
                    
                    // Screen Information
                    Text("Welcome to MindSpace! Explore the features below to add tasks, set reminders, and keep a journal, all designed to help you stay organized and mindful.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                    
                    // Buttons
                    HStack(spacing: 20) {
                        // Journal Button
                        NavigationLink(destination: Journal()) {
                            Text("Journal")
                                .fontWeight(.bold)
                                .frame(width: 160, height: 45)
                                .background(Color(hex: "91D7E0"))
                                .cornerRadius(5)
                                .foregroundColor(.white)
                        }
                    
                        // Tasks Button
                        NavigationLink(destination: Tasks()) {
                            Text("Tasks")
                                .fontWeight(.bold)
                                .frame(width: 160, height: 45)
                                .background(Color(hex: "91D7E0"))
                                .cornerRadius(5)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding()
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}

// Allows the usage of hex codes, this subroutine is not mine.
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hex)
        
        // Scan the color value
        var color: UInt32 = 0
        if hex.hasPrefix("#") {
            scanner.currentIndex = hex.index(hex.startIndex, offsetBy: 1) // Skip the #
        }
        scanner.scanHexInt32(&color)
        
        let red = Double((color >> 16) & 0xFF) / 255.0
        let green = Double((color >> 8) & 0xFF) / 255.0
        let blue = Double(color & 0xFF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}

#Preview {
    HomeScreen()
}
