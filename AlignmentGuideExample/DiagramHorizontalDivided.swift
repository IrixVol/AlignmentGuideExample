//
//  DiagramHorizontalDivided.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 12.08.2024.
//

import SwiftUI

struct DiagramHorizontalDivided: View {
    
    var body: some View {
        
        HStack(alignment: .top, spacing: 0) {
            
            Rectangle()
                .frame(width: 50, height: 100)
                // The child define new top guide for HStack
                // other children will start from it
                .alignmentGuide(.top, computeValue: { dimension in
                    dimension[.bottom] + 10
                })
           
            Rectangle()
                .foregroundStyle(.blue)
                .frame(width: 60, height: 40)
                .alignmentGuide(.middleLineTop, computeValue: { dimension in
                    dimension[.top]
                })
            
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
        .overlay(alignment: .init(horizontal: .center, vertical: .middleLineTop)) {
            Rectangle()
                .foregroundStyle(.cyan)
                .frame(height: 2)
        }
        .padding()
        .border(.red)
    }
}

extension VerticalAlignment {
    
    private enum MiddleLineTop: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.bottom] + 4
        }
    }
    static let middleLineTop = VerticalAlignment(MiddleLineTop.self)
}

#Preview {
    DiagramHorizontalDivided()
}
