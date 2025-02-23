//
//  CardThumbnail.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI

struct CardThumbnail: View {
  let card: Card

  var body: some View {
    card.backgroundColor
      .cornerRadius(10)
      .shadow(
        color: Color("shadow-color"),
        radius: 3,
        x: 0.0,
        y: 0.0)
  }
}

struct CardThumbnail_Previews: PreviewProvider {
  static var previews: some View {
    CardThumbnail(card: initialCards[0])
      .frame(
        width: Settings.thumbnailSize.width,
        height: Settings.thumbnailSize.height)
  }
}
