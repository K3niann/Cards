//
//  CardStore.swift
//  Cards
//
//  Created by Keniann Sierra on 2/14/25.
//

import SwiftUI

class CardStore: ObservableObject {
  @Published var cards: [Card] = []
  @Published var selectedElement: CardElement?

  init(defaultData: Bool = false) {
    if defaultData {
      cards = initialCards
    }
  }

  func index(for card: Card) -> Int? {
    cards.firstIndex { $0.id == card.id }
  }
}

