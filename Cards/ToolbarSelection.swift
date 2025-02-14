//
//  ToolbarSelection.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import Foundation

enum ToolbarSelection: CaseIterable, Identifiable {
 case photoModal, frameModal, stickerModal, textModal
    var id: Int {
     hashValue
    }
}
