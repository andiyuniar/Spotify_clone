//
//  ContentView.swift
//  Spotify_clone
//
//  Created by Andi Yuniarto on 14/02/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            HomePage().tabItem {
                VStack {
                    Image(systemName: "house")
                    Text("Home")
                }
            }.tag(1)
                        
            SearchPage().tabItem {
                VStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
