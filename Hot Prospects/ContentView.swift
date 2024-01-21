//
//  ContentView.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 20/01/24.
//

import SamplePackage
import SwiftUI


struct ContentView: View {
    let possibleNumbers = Array(1...60)
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! \n \(results)")
                .multilineTextAlignment(.center)
        }
        .padding()
    }
    
    var results:String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.joined(separator: ", ")
    }
}

#Preview {
    ContentView()
}
