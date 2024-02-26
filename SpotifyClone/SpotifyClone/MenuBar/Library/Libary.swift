//
//  Libary.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct Libary: View {
    @State var musicButtonIsPressed: Bool = true
    @State var podcastsButtonIsPressed: Bool = false
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack {
                HStack {
                    Button(action: {
                        musicButtonIsPressed = true
                        podcastsButtonIsPressed = false
                    }, label: {
                        if musicButtonIsPressed {
                            Text("Music")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                                .padding()
                                .opacity(1)
                        } else {
                            Text("Music")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                                .padding()
                                .opacity(0.2)
                        }
                    })
                    Button(action: {
                        podcastsButtonIsPressed = true
                        musicButtonIsPressed = false
                    }, label: {
                        if podcastsButtonIsPressed {
                            Text("Podcasts")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                                .opacity(1)
                        } else {
                            Text("Podcasts")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .bold()
                                .opacity(0.2)
                        }
                    })
                    Spacer()
                }
                Spacer()
                
                if musicButtonIsPressed {
                    Music()
                } else {
                    Podcasts()
                }
            }
        }
    }
}

#Preview {
    Libary()
}

