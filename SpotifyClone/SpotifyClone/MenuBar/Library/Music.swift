//
//  Music.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct Music: View {
    @State var playlistsButtonIsPressed: Bool = true
    @State var albumsButtonIsPressed: Bool = false
    @State var artistsButtonIsPressed: Bool = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack {
                HStack(spacing: 20) {
                    Button(action: {
                        playlistsButtonIsPressed = true
                        albumsButtonIsPressed = false
                        artistsButtonIsPressed = false
                        
                    }, label: {
                        VStack {
                            if playlistsButtonIsPressed {
                                Text("Playlists")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(1)
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 65, height: 2)
                            } else {
                                Text("Playlists")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(0.2)
                                
                            }
                            
                        }
                    })
                    Button(action: {
                        albumsButtonIsPressed = true
                        playlistsButtonIsPressed = false
                        artistsButtonIsPressed = false
                    }, label: {
                        VStack {
                            if albumsButtonIsPressed {
                                Text("Albums")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(1)
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 65, height: 2)
                            } else {
                                Text("Albums")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(0.2)
                            }
                        }
                    })
                    Button(action: {
                        artistsButtonIsPressed = true
                        playlistsButtonIsPressed = false
                        albumsButtonIsPressed = false
                    }, label: {
                        VStack {
                            if artistsButtonIsPressed {
                                Text("Artists")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(1)
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 65, height: 2)
                            } else {
                                Text("Artists")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(0.2)
                            }
                        }
                    })
                    Spacer()
                }
                .padding()
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 10) {
                        ForEach(0..<4) { index in
                            HStack(spacing: 10) {
                                Image("XG")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 120)
                                VStack(alignment: .leading) {
                                    Text("Winter Without you")
                                        .foregroundColor(.white)
                                        .bold()
                                    Text("by XG")
                                        .foregroundColor(.white)
                                        .opacity(0.5)
                                }
                                Spacer()
                            }.padding(.horizontal)
                            
                            HStack(spacing: 10) {
                                Image("müslüm3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 120)
                                VStack(alignment: .leading) {
                                    Text("Affet")
                                        .foregroundColor(.white)
                                        .bold()
                                    Text("by Müslüm Gürses")
                                        .foregroundColor(.white)
                                        .opacity(0.5)
                                }
                                Spacer()
                            }.padding(.horizontal)
                            
                            HStack(spacing: 10) {
                                Image("müslüm1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 120)
                                VStack(alignment: .leading) {
                                    Text("Tutamıyorum Zamanı")
                                        .foregroundColor(.white)
                                        .bold()
                                    Text("by Müslüm Gürses")
                                        .foregroundColor(.white)
                                        .opacity(0.5)
                                }
                                Spacer()
                            }.padding(.horizontal)
                            
                            HStack(spacing: 10) {
                                Image("semicenk")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 120)
                                VStack(alignment: .leading) {
                                    Text("Karışık Kaset")
                                        .foregroundColor(.white)
                                        .bold()
                                    Text("by Semicenk")
                                        .foregroundColor(.white)
                                        .opacity(0.5)
                                }
                                Spacer()
                            }.padding(.horizontal)
                            
                            HStack(spacing: 10) {
                                Image("müslüm2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 120)
                                VStack(alignment: .leading) {
                                    Text("Seni Yazdım")
                                        .foregroundColor(.white)
                                        .bold()
                                    Text("by Müslüm Gürses")
                                        .foregroundColor(.white)
                                        .opacity(0.5)
                                }
                                Spacer()
                            }.padding()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Music()
}
