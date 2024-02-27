//
//  MusicScreen.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 27.02.2024.
//

import SwiftUI

struct MusicScreen: View {
    var song: SongModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [song.color, .white]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(.title)
                    })
                    Spacer()
                    Text(song.title)
                        .foregroundStyle(.white)
                        .font(.title3)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.white)
                            .font(.title)
                    })
                }
                .padding(.horizontal)
                .padding()
                
                Image(song.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 44, height: UIScreen.main.bounds.width - 44)
                HStack {
                    VStack(alignment: .leading) {
                        Text(song.title)
                            .foregroundStyle(.white)
                            .font(.title)
                            .bold()
                        Text(song.title)
                            .foregroundColor(.white)
                            .font(.title3)
                            .opacity(0.8)
                    }
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                        .bold()
                        .font(.title2)
                }
                .padding(.horizontal, 22)
                
            }
        }
    }
}

#Preview {
    MusicScreen(song: .init(title: "saasd", imageName: "müslüm1", color: .black))
}
