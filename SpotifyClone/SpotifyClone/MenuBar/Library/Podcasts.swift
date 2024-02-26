//
//  Podcasts.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct Podcasts: View {
    @State var episodesButtonIsPressed: Bool = true
    @State var downloadsButtonIsPressed: Bool = false
    @State var showsButtonIsPressed: Bool = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack {
                HStack(spacing: 20) {
                    Button(action: {
                        episodesButtonIsPressed = true
                        downloadsButtonIsPressed = false
                        showsButtonIsPressed = false
                        
                    }, label: {
                        VStack {
                            if episodesButtonIsPressed {
                                Text("Episodes")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(1)
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 65, height: 2)
                            } else {
                                Text("Episodes")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(0.2)
                                
                            }
                            
                        }
                    })
                    Button(action: {
                        downloadsButtonIsPressed = true
                        episodesButtonIsPressed = false
                        showsButtonIsPressed = false
                    }, label: {
                        VStack {
                            if downloadsButtonIsPressed {
                                Text("Downloads")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(1)
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 65, height: 2)
                            } else {
                                Text("Downloads")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(0.2)
                            }
                        }
                    })
                    Button(action: {
                        showsButtonIsPressed = true
                        episodesButtonIsPressed = false
                        downloadsButtonIsPressed = false
                    }, label: {
                        VStack {
                            if showsButtonIsPressed {
                                Text("Shows")
                                    .foregroundColor(.white)
                                    .bold()
                                    .opacity(1)
                                Rectangle()
                                    .foregroundColor(.green)
                                    .frame(width: 65, height: 2)
                            } else {
                                Text("Shows")
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
                    VStack(spacing: 30) {
                ForEach(0..<8) { index in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(#colorLiteral(red: 0.1254901886, green: 0.1254901886, blue: 0.1254901886, alpha: 1)))
                            .frame(maxWidth: .infinity, idealHeight: 170)
                            .padding(.horizontal)
                        VStack {
                            HStack{
                                Image(systemName: "müslüm")
                            }
                            HStack {
                                Image(systemName: "play.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .opacity(0.8)
                                Text("25 JAN 1HR. 32MIN.")
                                    .foregroundColor(.white)
                                    .opacity(0.4)
                                    .font(.caption2)
                                Spacer()
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .opacity(0.8)
                                Image(systemName: "arrow.down.circle")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .opacity(0.8)
                                Image(systemName: "heart")
                                    .foregroundColor(.white)
                                    .font(.title2)
                                    .opacity(0.8)
                            }
                            .padding(.horizontal, 30)
                        }
                        
                        
                        
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    Podcasts()
}
