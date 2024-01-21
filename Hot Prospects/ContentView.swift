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
        List {
            Text("Tylor Swift")
                .swipeActions{
                    Button(role:.destructive) {
                        print("Deleted")
                    }label: {
                        Label("Delete", systemImage: "minus.circle")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button {
                        print("Pinned")
                    }label: {
                        Label("Pin", systemImage: "pin")
                    }
                    .tint(.orange)
                }
                
        }
    }
}

#Preview {
    ContentView()
}
