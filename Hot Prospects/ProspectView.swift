//
//  ProspectView.swift
//  Hot Prospects
//
//  Created by Mukthar Amiyan on 21/01/24.
//

import SwiftUI

struct ProspectView: View {
    enum FilerType {
        case none, contacted, uncontacted
    }
    
    let filter : FilerType
    
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .navigationTitle(title)
        }
    }
    
    var title : String {
        return switch filter {
        case .none:
            "Everyone"
        case .contacted:
            "Contacted people"
        case .uncontacted:
            "Uncontacted people"
        }
    }
}

#Preview {
    ProspectView(filter: .none)
}
