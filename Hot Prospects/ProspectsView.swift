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
            List {
                ForEach(filterdProspects) {
                    prospect in
                    VStack (alignment: .leading ){
                        Text(prospect.name)
                            .font(.headline)
                        Text(prospect.emailAddress)
                            .foregroundStyle(.secondary)
                    }
                }
            }
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
    
    var filterdProspects : [Prospect] {
      return switch filter {
        case .none:
          prospects.people
        case .contacted:
          prospects.people.filter {$0.isConnected}
        case .uncontacted:
          prospects.people.filter { !$0.isConnected}
        }
    }
}

#Preview {
    ProspectView(filter: .none)
        .environmentObject(Prospects())
}
