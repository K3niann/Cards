//
//  CardsListView.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI


struct CardsListView: View {
    @State private var isPresented = false
    @EnvironmentObject var store: CardStore
    
    var body: some View {
      ScrollView(showsIndicators: false) {
        VStack {
            ForEach(store.cards) { card in
            CardThumbnail(card: card)
              .onTapGesture {
                isPresented = true
              }
          }
        }
      }
      .fullScreenCover(isPresented: $isPresented) {
        SingleCardView()
      }
    }
  }

struct CardsListView_Previews: PreviewProvider {
  static var previews: some View {
    CardsListView()
          .environmentObject(CardStore(defaultData: true))
  }
}


