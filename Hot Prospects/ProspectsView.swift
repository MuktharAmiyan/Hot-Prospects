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
    
    @EnvironmentObject var prospects : Prospects
    
    let filter : FilerType
    
    var body: some View {
        NavigationStack {
            Text("People: \(prospects.people.count) ")
                .navigationTitle(title)
                .toolbar{
                    Button{
                        let prospect = Prospect()
                        prospect.name = "Mukthar Amiyan"
                        prospect.emailAddress = "amiyanmukthar@gmail.com"
                        prospects.people.append(prospect)
                    }label: {
                        Label("Scan", systemImage: "qrcode.viewfinder")
                    }
                }
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
        .environmentObject(Prospects())
}
