//
//  SingleCardView.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI

struct SingleCardView: View {
  @Environment(\.dismiss) var dismiss
  @State private var currentModal: ToolbarSelection?
  @Binding var card: Card
    
    
    var content: some View {
     card.backgroundColor
    }
    

  var body: some View {
    NavigationStack {
        CardDetailView(card: $card)
        
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            Button("Done") {
              dismiss()
            }
          }
          ToolbarItem(placement: .bottomBar) {
            BottomToolbar(modal: $currentModal)
          }
        }
        .sheet(item: $currentModal) { item in
         switch item {
         default:
         Text(String(describing: item))
         }
        }
    }
  }
}

struct SingleCardView_Previews: PreviewProvider {
  static var previews: some View {
      SingleCardView(card: .constant(initialCards[0]))
  }
}
