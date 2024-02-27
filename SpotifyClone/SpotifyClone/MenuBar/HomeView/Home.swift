//
//  Home.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
        BackgroundColor()
                ScrollView {
                    ZStack{
                        VStack(spacing: 50) {
                            RecentlyPlayed()
                            PopularRadios()
                            ForFansOf()
                    }
                        .padding(.bottom, 50)
                }
                
            }
        }
    }
}
#Preview {
    Home()
}
