//
//  DiagramHorizontal.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 11.08.2024.
//

import SwiftUI

struct DiagramHorizontalExample: View {
    
    var body: some View {

        HStack(alignment: .top, spacing: 0) {
            
            Rectangle()
                .frame(width: 50, height: 100)
                // The Rectangle define new top guide for HStack
                // other Rectangles will start from it
                .alignmentGuide(.top, computeValue: { dimension in
                    dimension[.bottom] + 10
                })
            
            Rectangle()
                .foregroundStyle(.blue)
                .frame(width: 60, height: 40)
            
            Rectangle()
                .frame(width: 70, height: 50)
                .alignmentGuide(.top, computeValue: { dimension in
                    dimension[.bottom] + 10
                })
            
            Rectangle()
                .foregroundStyle(.red)
                .frame(width: 50, height: 50)
            
            Rectangle()
                .frame(width: 80, height: 40)
                .alignmentGuide(.top, computeValue: { dimension in
                    dimension[.bottom] + 10
                })
        }
        .padding()
        .border(.red)
    }
}

#Preview {
    DiagramHorizontalExample()
}

