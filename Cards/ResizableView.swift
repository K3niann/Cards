//
//  ResizableView.swift
//  Cards
//
//  Created by Keniann Sierra on 2/13/25.
//

import SwiftUI

struct ResizableView: View {
     // 1
     private let content = RoundedRectangle(cornerRadius: 30.0)
     private let color = Color.red
     var body: some View {
     // 2
     content
     .frame(width: 250, height: 180)
     .foregroundColor(color)
     }
}

#Preview {
    ResizableView()
}
