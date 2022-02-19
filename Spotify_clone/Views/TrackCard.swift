//
//  TrackCard.swift
//  Spotify_clone
//
//  Created by Andi Yuniarto on 19/02/22.
//

import SwiftUI

struct TrackCard: View {
    var body: some View {
        HStack {
            Image(systemName: "timelapse")
                .padding(.trailing, 10)
            Text("Title")
            Spacer()
            Image(systemName: "ellipsis")
        }
        .padding(15)
        .background(.black)
        .foregroundColor(.white)
        
    }
}

struct TrackCard_Previews: PreviewProvider {
    static var previews: some View {
        TrackCard()
    }
}
