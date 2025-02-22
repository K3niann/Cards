//
//  CardsApp.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI

@main
struct CardsApp: App {
  @StateObject var store = CardStore()

  var body: some Scene {
    WindowGroup {
      CardsListView()
        .environmentObject(store)
        .onAppear {
          print(URL.documentsDirectory)
        }
    }
  }
}
