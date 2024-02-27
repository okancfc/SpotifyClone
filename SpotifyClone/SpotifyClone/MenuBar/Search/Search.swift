//
//  Search.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI



struct Search: View {
    @State var showSearchSheet: Bool = false
    @State var cameraIsPressed: Bool = false
    @State var cameraButtonColor: Color = Color.white
    var redGeneres: [String] = ["Klasik","Radyo","Yeni Çıkanlar","Uyku","Podcast","Listeler"]
    var blueGeneres: [String] = ["Evde","Chill","Fitness","Hip Hop","Romantik","Keşfet"]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            VStack {
                HStack {
                    Text("Search")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    Spacer()
                    Button(action: {
                        if cameraIsPressed {
                            cameraButtonColor = Color.green
                            cameraIsPressed.toggle()
                        } else {
                            cameraButtonColor = Color.white
                            cameraIsPressed.toggle()
                        }
                        
                        
                    }, label: {
                        Image(systemName: "camera")
                            .foregroundColor(Color(cameraButtonColor))
                            .font(.title)
                            .padding(.horizontal)
                    })
                }
                .padding(.horizontal, 10)
                Button(action: {
                    showSearchSheet.toggle()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 380, height: 50)
                            .foregroundColor(.white)
                            .padding()
                        HStack() {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.black)
                                .font(.title)
                                .padding(8)
                            Text("Artist, songs, or podcast")
                                .foregroundColor(.black)
                                .font(.title3)
                            Spacer()
                        }
                        .padding(.horizontal, 30)
                    }
                })
                .fullScreenCover(isPresented: $showSearchSheet, content: {
                    SearchSheet(showSearchSheet: $showSearchSheet)
                    
                })
                ScrollView(showsIndicators: false) {

                    Text("Browse All")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.white)
                        .padding()
                        .bold()
                        .padding(.horizontal, 10)
                        
                    HStack(spacing: 40) {
                        VStack(spacing: 50) {
                            ForEach(0..<6) { index in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 6)
                                        .foregroundColor(.blue)
                                        .frame(width: 170, height: 120)
                                    Text(blueGeneres[index])
                                        .frame(width: 130, height: 90, alignment: .topLeading)
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .bold()
                                        
                                }
                            }
                        }
                        VStack(spacing: 50) {
                            ForEach(0..<6) { index in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 6)
                                        .foregroundColor(.red)
                                        .frame(width: 170, height: 120)
                                    Text(redGeneres[index])
                                        .frame(width: 130, height: 90, alignment: .topLeading)
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .bold()
                                        
                                        
                                    
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
    Search()
}
