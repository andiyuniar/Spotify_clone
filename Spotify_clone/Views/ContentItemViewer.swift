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
            VStack {
                Spacer()
                    .frame(width: 50, height: 200)
                    .background(Color.clear)
                Spacer()
                    .frame(width:200)
                    .background(Color.blue)
            }
        }
     }
}

struct ContentItemViewer_Previews: PreviewProvider {
    static var previews: some View {
        ContentItemViewer()
    }
}
