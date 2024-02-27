//
//  ForFansOf.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct ForFansOf: View {
    let songs: [SongModel] = [
        .init(title: "Tutamıyorum Zamanı", imageName: "müslüm1", color: .black),
        .init(title: "Affet", imageName: "müslüm2", color: Color(#colorLiteral(red: 0.6676617265, green: 0.4452120066, blue: 0.1912025511, alpha: 1))),
        .init(title: "Nilüfer", imageName: "müslüm3", color: Color(#colorLiteral(red: 0.0002422259713, green: 0.07892755419, blue: 0.09735239297, alpha: 1)))
    ]
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image("müslüm")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 60, height: 60)
                
                
                VStack {
                    Text("FOR FANS OF")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .opacity(0.3)
                    
                    Text("Müslüm Gürses")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
            }
            
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
    ForFansOf()
}
