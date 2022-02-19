//
//  ContentItemViewer.swift
//  Spotify_clone
//
//  Created by Andi Yuniarto on 17/02/22.
//

import SwiftUI

struct ContentItemViewer: View {
    var topSpacer_height:CGFloat = 350
    
    var body: some View {
        ZStack {
            //Layer 0
            LinearGradient(gradient: Gradient(colors: [Color.init(red: 61/255, green: 89/255, blue: 115/255), Color.black, Color.black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            //Layer 1
            VStack {
                Spacer().frame(height:50)
                Image("bondClassified")
                    .resizable()
                    .frame(width:200, height:200)
                Text("Title")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                Text("Subtitle")
                    .foregroundColor(.init(red: 0.5, green: 0.5, blue: 0.5))
                    .font(.system(size: 16, weight: .medium))
                Spacer()
            }
            
            //Layer 2
            ScrollView {
                VStack(spacing:0) {
                    HStack {
                        Spacer()
                            .frame (height: topSpacer_height)
                            .background(LinearGradient(gradient: Gradient(colors: [
                                Color.clear, Color.clear, Color.clear, Color.clear, Color.clear, Color.black]),
                                                       startPoint: .top, endPoint: .bottom))
                    }
                    VStack {
                        ForEach(0..<30){ indicator in
                            HStack {
                                TrackCard()
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
