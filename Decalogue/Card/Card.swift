//
//  Card.swift
//  Did
//
//  Created by Michael Campbell on 10/22/25.
//

import SwiftUI

struct Card<Content: View>: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    let content: Content
    
    init(@ViewBuilder _ content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            content
        }
    }
}
