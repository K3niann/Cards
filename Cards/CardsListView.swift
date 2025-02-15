//
//  CardsListView.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI


struct CardsListView: View {
    @EnvironmentObject var store: CardStore
    @State private var selectedCard: Card?
    
    var body: some View {
      ScrollView(showsIndicators: false) {
        VStack {
            ForEach(store.cards) { card in
            CardThumbnail(card: card)
              .onTapGesture {
                selectedCard = card
              }
          }
        }
      }
      .fullScreenCover(item: $selectedCard) { card in
          if let index = store.index(for: card) {
           SingleCardView(card: $store.cards[index])
          } else {
           fatalError("Unable to locate selected card")
          }
      }
    }
  }

struct CardsListView_Previews: PreviewProvider {
  static var previews: some View {
    CardsListView()
          .environmentObject(CardStore(defaultData: true))
  }
}


