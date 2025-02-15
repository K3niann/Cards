//
//  Operators.swift
//  Cards
//
//  Created by Keniann Sierra on 2/14/25.
//

import SwiftUI


func + (left: CGSize, right: CGSize) -> CGSize {
     CGSize(
     width: left.width + right.width,
     height: left.height + right.height)
}


