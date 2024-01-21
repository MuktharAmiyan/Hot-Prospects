//
//  ContentView.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 20/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack{
          Text("Hello World!")
                .padding()
                .background(backgroundColor)
          Text("Context Menu")
                .padding()
                .contextMenu {
                    Button (role: .destructive){
                        backgroundColor = .red
                    }label: {
                        Label("Red", systemImage: "checkmark.circle.fill")
                    }
                    Button (role: .destructive){
                        backgroundColor = .blue
                    }label: {
                        Label("Blue", systemImage: "checkmark.circle.fill")
                    }
                    Button (role: .destructive){
                        backgroundColor = .green
                    }label: {
                        Label("Green", systemImage: "checkmark.circle.fill")
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
