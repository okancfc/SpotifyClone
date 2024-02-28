//
//  MusicScreen.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 27.02.2024.
//

import SwiftUI

struct MusicScreen: View {
    @State var heartButtonIsPressed: Bool = false
    @State var replayButtonIsPressed: Bool = false
    @State var hifispeakerButtonIsPressed: Bool = false
    @State var textBadgeButtonIsPressed: Bool = false
    @State var shuffleButtonIsPressed: Bool = false
    @State private var totalSeconds: Double = 0
    private let maxMinutes: Double = 5
    private var totalSecondsInMax: Double { maxMinutes * 60 }
    @Binding var isShowing: Bool
    var song: SongModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [song.color, song.color.opacity(0.4)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    Button(action: {
                        isShowing = false
                    }, label: {
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(.title3)
                            .padding(.horizontal, 15)
                    })
                    Spacer()
                    Text(song.title)
                        .foregroundStyle(.white)
                        .font(.title2)
                        .padding(.horizontal)
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.white)
                            .font(.title3)
                            .padding(.horizontal, 15)
                    })
                }
                .padding(.horizontal)
                .padding(.top, 60)
                .padding(.vertical)
                
                Image(song.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.width - 30)
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
                    Button(action: {
                        heartButtonIsPressed.toggle()
                    }, label: {
                        Image(systemName: "heart")
                            .foregroundColor(heartButtonIsPressed ? Color.green : Color.white)
                            .font(.title2)
                    })
                }
                .padding(.horizontal, 22)
                VStack(spacing: -10) {
                    Slider(value: $totalSeconds, in: 0...totalSecondsInMax)
                        .padding()
                        .accentColor(.white)
                    HStack {
                        Text("\(formattedTime(second: totalSeconds))")
                            .bold()
                            .foregroundColor(.white)
                            .padding(.horizontal, 22)
                        Spacer()
                    }
                }
                HStack(spacing: 50) {
                    
                    Button(action: {
                        shuffleButtonIsPressed.toggle()
                    }, label: {
                        Image(systemName: "shuffle")
                            .foregroundColor(shuffleButtonIsPressed ? Color.green : Color.white)
                            .font(.callout)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "backward.end.fill")
                            .foregroundColor(.white)
                            .font(.title2)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "play.circle.fill")
                            .font(.system(size: 70))
                            .foregroundColor(.white)
                            
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "forward.end.fill")
                            .foregroundColor(.white)
                    })
                    
                    Button(action: {
                        replayButtonIsPressed.toggle()
                    }, label: {
                        Image(systemName: "repeat")
                            .foregroundColor(replayButtonIsPressed ? Color.green : Color.white)
                            .font(.callout)
                    })
                }
                .padding()
               Spacer()
                
                HStack {
                    Button(action: {
                        hifispeakerButtonIsPressed.toggle()
                    }, label: {
                        Image(systemName: "hifispeaker")
                            .foregroundColor(hifispeakerButtonIsPressed ? Color.green : Color.white)
                            .font(.callout)
                            .padding()
                            .padding(.horizontal, 15)
                        Spacer()
                    })

                    Button(action: {
                        textBadgeButtonIsPressed.toggle()
                    }, label: {
                        Image(systemName: "text.badge.plus")
                            .foregroundColor(textBadgeButtonIsPressed ? Color.green : Color.white)
                            .font(.callout)
                            .padding()
                            .padding(.horizontal, 15)
                    })
                }
                .padding(.bottom, 50)
        
            }
            

            
        }
    }
    func formattedTime( second: Double) -> String {
        let minute = Int(second) / 60
        let remainingSeconds = Int(second) % 60
        return String(format: "%02d:%02d", minute, remainingSeconds)
    }
}

#Preview {
    MusicScreen(isShowing: .constant(true), song: .init(title: "saasd", imageName: "müslüm1", color: .black))
}
