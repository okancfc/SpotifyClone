//
//  RecentlyPlayed.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI


struct RecentlyPlayed: View {
    let songs: [SongModel] = [
        .init(title: "Tutamıyorum Zamanı", imageName: "müslüm1", color: .black),
        .init(title: "Winter Without You", imageName: "XG", color: Color(uiColor: .lightGray)),
        .init(title: "Karışık Kaset", imageName: "semicenk", color: Color(#colorLiteral(red: 0.07226688415, green: 0.1028481796, blue: 0.1865075231, alpha: 1))),
        .init(title: "Affet", imageName: "müslüm2", color: Color(#colorLiteral(red: 0.6676617265, green: 0.4452120066, blue: 0.1912025511, alpha: 1))),
        .init(title: "Nilüfer", imageName: "müslüm3", color: Color(#colorLiteral(red: 0.0002422259713, green: 0.07892755419, blue: 0.09735239297, alpha: 1))),
    ]

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
    RecentlyPlayed()
}
