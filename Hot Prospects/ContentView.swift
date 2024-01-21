//
//  ContentView.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 20/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var output = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(output)
        }
        .padding()
        .task {
            await fetchReadings()
        }
    }
    
    func fetchReadings()async {
        let fetchTask = Task{ () -> String in
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data,_) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            return "Found \(readings.count) Readings"
        }
        
        
        let result = await fetchTask.result
        
        switch result {
        case .success(let str):
            output = str
        case .failure(let error):
            output = "Download Error \(error.localizedDescription)"
         
        }
        
    }
}

#Preview {
    ContentView()
}
