//
//  ForFansOf.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 25.02.2024.
//

import SwiftUI

struct SongModel {
    var title: String
    var imageName: String
}


struct ForFansOf: View {
    let songs: [SongModel] = [.init(title: "add", imageName: "fdasd")]
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
                HStack {
                    ForEach(0..<2) { index in
                        VStack(spacing: 10) {
                            Image("müslüm2")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            
                            Text("Seni Yazdım")
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .font(.caption)
                                .opacity(0.7)

                        }
                        VStack(spacing: 10) {
                            Image("müslüm3")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Affet")
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .font(.caption)
                                .opacity(0.7)

                        }
                        VStack(spacing: 10) {
                            Image("müslüm1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                                .cornerRadius(10)
                            Text("Tutamıyorum Zamanı")
                                .foregroundColor(.white)
                                .padding(.horizontal, 10)
                                .font(.caption)
                                .opacity(0.7)

                        }
                    }
                }
                .padding(.horizontal, 10)
                
            }
            
        }

    }
}
#Preview {
    ForFansOf()
}
