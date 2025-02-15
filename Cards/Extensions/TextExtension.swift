//
//  TextExtension.swift
//  Cards
//
//  Created by Keniann Sierra on 2/14/25.
//

import SwiftUI

extension Text {
  func scalableText(font: Font = Font.system(size: 1000)) -> some View {
    self
      .font(font)
      .minimumScaleFactor(0.01)
      .lineLimit(1)
  }
}
