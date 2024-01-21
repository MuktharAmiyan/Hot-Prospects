//
//  Perospect.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 21/01/24.
//

import SwiftUI

class Prospect :Identifiable,Codable {
    var id = UUID()
    var name = "Anonymous"
    var emailAddress = ""
    var isConnected = false
}


@MainActor class Prospects : ObservableObject {
    @Published var people : [Prospect]
    
    init() {
        people = []
    }
    
}

