//
//  ContentItemViewer.swift
//  Spotify_clone
//
//  Created by Andi Yuniarto on 17/02/22.
//

import SwiftUI

struct ContentItemViewer: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer().frame(height:50)
                Image(systemName: "music.note")
                Text("Title")
                Text("Subtitle")
                Spacer()
            }
            ScrollView {
                VStack(spacing:0) {
                    HStack {
                        Spacer()
                            .frame (height: 200)
                            .background(Color.red.opacity(0.3))
                    }
                    VStack {
                        ForEach(0..<30){ indicator in
                            HStack {
                                Text("song").foregroundColor(.white)
                                Spacer()
                            }
                        }
                    }.background(Color.black)
                }
                
            }
        }
    }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}
