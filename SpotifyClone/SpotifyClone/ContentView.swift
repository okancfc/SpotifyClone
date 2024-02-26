//
//  ContentView.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 24.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                    Home()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                Search()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                Libary()
                    .tabItem {
                        Image(systemName: "books.vertical.fill")
                        Text("Libary")
                    }
               }
            .accentColor(.white)
            .onAppear() {
                UITabBar.appearance().barTintColor = .black
            }
    }
}
struct BackgroundColor: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1521018147, green: 0.5071325302, blue: 0.2629063129, alpha: 1)), .black, .black]), startPoint: .zero, endPoint: .center)
            .ignoresSafeArea(.all)
    }
}
#Preview {
    ContentView()
}
