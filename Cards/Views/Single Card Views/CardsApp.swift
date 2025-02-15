//
//  CardsApp.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var store = CardStore(defaultData: true)
    
    var body: some Scene {
        WindowGroup {
            CardsListView()
                .environmentObject(store)
        }
    }
}
