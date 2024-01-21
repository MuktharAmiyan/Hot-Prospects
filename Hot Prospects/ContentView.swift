//
//  ContentView.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 20/01/24.
//

import SwiftUI


@MainActor class DelayedUpdater: ObservableObject {
    var value = 0 {
        willSet{
            objectWillChange.send()
        }
    }
    
    
    init() {
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) ){
                
                self.value += 1
            }
        }
    }
}

struct ContentView: View {
    @StateObject private var updater = DelayedUpdater()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Value is \(updater.value)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
