//
//  PopularRadios.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct PopularRadios: View {
    var body: some View {
        VStack {
            Text("Populer Radios")
            
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: -5) {
                    ForEach(0..<2) { index in
                        VStack(spacing: 10) {
                            Image("radyo1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Burak Bulut,Kubilay Karça,Mehmet Elmas...")
                                .frame(width: 150)
                                .foregroundColor(.white)
                                .font(.footnote)
                                .opacity(0.7)
                        }
                        VStack(spacing: 10) {
                            Image("radyo2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Kazım Koyuncu,Selda Bağcan,Neşat Ertaş v...")
                                .frame(width: 150)
                                .foregroundColor(.white)
                                .font(.footnote)
                                .opacity(0.7)

                        }
                        VStack(spacing: 10) {
                            Image("radyo3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Mehmet Erdem,Melike Şahin ve dah...")
                                .frame(width: 150)
                                .foregroundColor(.white)
                                .font(.footnote)
                                .opacity(0.7)

                        }
                        VStack(spacing: 10) {
                            Image("radyo4")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Göksel,Sertab Erener, Yıldız Tilbe ve daha fa..")
                                .frame(width: 150)
                                .foregroundColor(.white)
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
    PopularRadios()
}
