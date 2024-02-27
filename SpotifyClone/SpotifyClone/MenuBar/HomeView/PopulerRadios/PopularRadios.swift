//
//  PopularRadios.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct PopularRadios: View {
    
    let songs: [SongModel] = [
        .init(title: "Burak Bulut,Kubilay Karça,Mehmet Elmas...", imageName: "radyo1", color: Color(#colorLiteral(red: 0.9973644614, green: 0.6260759234, blue: 0.4598939419, alpha: 1))),
        .init(title: "Kazım Koyuncu,Selda Bağcan,Neşat Ertaş v...", imageName: "radyo2", color: Color(#colorLiteral(red: 0.913638413, green: 0.6518048048, blue: 0.6707056165, alpha: 1))),
        .init(title: "Mehmet Erdem,Melike Şahin ve dah...", imageName: "radyo3", color: Color(#colorLiteral(red: 0.9349310398, green: 0.8560464978, blue: 0.7486919761, alpha: 1))),
        .init(title: "Göksel,Sertab Erener, Yıldız Tilbe ve daha fa..", imageName: "radyo4", color: Color(#colorLiteral(red: 0.9965435863, green: 0.849466145, blue: 0.4858727455, alpha: 1)))
    ]
    
    
    
    var body: some View {
        VStack {
            Text("Populer Radios")
            
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<2) { index in 
                        ForEach(songs, id:\.self) { song in
                            SongView(model: song)
                                .frame(width: 150)
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
