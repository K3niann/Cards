//
//  Card.swift
//  Cards
//
//  Created by Keniann Sierra on 2/14/25.
//

import SwiftUI

struct Card: Identifiable {
     let id = UUID()
     var backgroundColor: Color = .yellow
     var elements: [CardElement] = []
}
