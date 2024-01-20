//
//  ContentView.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 20/01/24.
//

import SwiftUI

@MainActor class User : ObservableObject {
    @Published var name = "Tyler Swift"
}

struct EditView: View {
    @EnvironmentObject var user : User
    
    var body: some View {
        TextField("Name", text: $user.name)
    }
}

struct DisplayView: View {
    @EnvironmentObject var user : User
    var body: some View {
        Text(user.name)
    }
}

 
 
struct ContentView: View {
    
    @StateObject var user: User = User()
    
    var body: some View {
        VStack {
            EditView()
            DisplayView()
        }
        .padding()
        .environmentObject(user)
    }
}

#Preview {
    ContentView()
}
