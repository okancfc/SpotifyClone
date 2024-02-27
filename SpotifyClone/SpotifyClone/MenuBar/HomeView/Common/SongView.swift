//
//  SongView.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 27.02.2024.
//

import SwiftUI

struct SongModel: Hashable {
    var title: String
    var imageName: String
    var color: Color
}


struct SongView: View {
    var model: SongModel
    var body: some View {
        VStack(spacing: 10) {
            Image(model.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .cornerRadius(10)
            
            Text(model.title)
                .foregroundColor(.white)
                .padding(.horizontal, 10)
                .font(.footnote)
                .opacity(0.7)
                .lineLimit(2)
        }
        
    }
}
