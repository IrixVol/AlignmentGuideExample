//
//  DiagramVertical.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 11.08.2024.
//

import SwiftUI

struct DiagramVerticalExample: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Rectangle()
                .frame(width: 50, height: 100)
                // child define new leading guide for VStack
                // other children will start from it
                .alignmentGuide(.leading, computeValue: { dimension in
                    dimension[.trailing]
                })
            
            Rectangle()
                .foregroundStyle(.blue)
                .frame(width: 100, height: 60)
            
            Rectangle()
                .frame(width: 70, height: 50)
                .alignmentGuide(.leading, computeValue: { dimension in
                    dimension[.trailing]
                })
            
            Rectangle()
                .foregroundStyle(.red)
                .frame(width: 50, height: 50)
            
            Rectangle()
                .frame(width: 120, height: 40)
                .alignmentGuide(.leading, computeValue: { dimension in
                    dimension[.trailing]
                })
        }
        .padding()
        .border(.red)
    }
}

#Preview {
    DiagramVerticalExample()
}
