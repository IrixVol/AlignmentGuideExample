//
//  SimpleOverlay.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 18.08.2024.
//

import SwiftUI

struct SimpleOverlay: View {
    
    var body: some View {
        
        Rectangle()
            .fill(.orange)
            .frame(width: 100, height: 100)
            .alignmentGuide(.trailing, computeValue: {
                $0[.trailing] - 30
            })
            .alignmentGuide(.top, computeValue: {
                $0[.top] + 30
            })
            .overlay(alignment: .topTrailing) {
                Text("Hi")
            }
    }
}

#Preview {
    SimpleOverlay()
}
