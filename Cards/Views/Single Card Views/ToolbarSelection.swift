//
//  ToolbarSelection.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
  var id: Int {
    hashValue
  }

  case photoModal, frameModal, stickerModal, textModal
}
