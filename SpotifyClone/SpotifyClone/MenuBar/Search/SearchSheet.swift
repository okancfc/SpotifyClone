//
//  SearchSheet.swift
//  SpotifyClone
//
//  Created by Okan Çifçi on 26.02.2024.
//

import SwiftUI

struct SearchSheet: View {
    @State var text: String = ""
    @Binding var showSearchSheet: Bool
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            
                VStack {
                    HStack {
                        TextField("Search", text: $text)
                            .frame(width: 270, height: 35)
                            .padding(.horizontal,10)
                            .background(Color(uiColor: .lightGray).opacity(0.2))
                            .cornerRadius(6)
                            .padding(.horizontal,10)
                            .accentColor(.green)
                            .foregroundColor(.white)
                        Spacer()
                        Button(action: {
                            showSearchSheet.toggle()
                        }, label: {
                            Text("Cancel")
                                .foregroundColor(.white)
                                .font(.title3)
                        })
                        Spacer()
                    }
                    
                    Spacer()
                }
            
        }
    }
}

#Preview {
    SearchSheet(showSearchSheet: .constant(true))
}
    
