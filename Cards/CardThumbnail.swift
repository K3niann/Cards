//
//  CardThumbnail.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI

struct CardThumbnail: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.gray)
            .frame(width: 150, height: 250)
    }
}

struct CardThumbnail_Previews: PreviewProvider {
  static var previews: some View {
    CardThumbnail()
  }
}


