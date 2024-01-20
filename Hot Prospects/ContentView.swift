//
//  ContentView.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 20/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "One"
    var body: some View {
        TabView(selection: $selectedTab){
            Text("Tab 1")
                .onTapGesture {
                    selectedTab = "Two"
                }
                .tabItem {
                    Label("One", systemImage: "star")
                }
                .tag("One")
            Text("Tab 2")
                .onTapGesture {
                    selectedTab = "One"
                }
                .tabItem {
                    Label("Two", systemImage: "circle")
                }
                .tag("Two")
        }
    }
}

#Preview {
    ContentView()
}
