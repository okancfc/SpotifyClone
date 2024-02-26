//
//  RecentlyPlayed.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct RecentlyPlayed: View {
    var body: some View {
        VStack {
            HStack {
                Text("Recently Played")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal, 5)
                    .padding()
                
                Image("profilephoto")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    .padding(.horizontal)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0..<2) { index in
                        VStack(spacing: 10) {
                            Image("müslüm1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Tutamıyorum Zamanı")
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .font(.footnote)
                                .opacity(0.7)

                        }
                        VStack(spacing: 10) {
                            Image("müslüm2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Seni Yazdım")
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .font(.footnote)
                                .opacity(0.7)

                            
                        }
                        VStack(spacing: 10) {
                            Image("semicenk")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Karışık Kaset")
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .font(.footnote)
                                .opacity(0.7)

                        }
                        VStack(spacing: 10) {
                            Image("XG")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Winter Without you")
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .font(.footnote)
                                .opacity(0.7)

                        }
                    }
                }
            }
        }
    }
}
#Preview {
    RecentlyPlayed()
}
