//
//  VerticalCenter.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 10.07.2024.
//

import SwiftUI

struct VerticalCenterExample: View {

    var body: some View {

        VStack(alignment: .customVerticalCenter, spacing: 16) {
            
            Image(systemName: "sun.min.fill")
                .foregroundStyle(.green)
            
            HStack(alignment: .top, spacing: 16) {
                
                Rectangle()
                    .foregroundStyle(.yellow)
                    .frame(width: 50, height: 100)
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width: 120, height: 100)
                Rectangle()
                    .foregroundStyle(.green)
                    .frame(width: 100, height: 100)
                    .alignmentGuide(.customVerticalCenter, computeValue: {
                        $0[HorizontalAlignment.leading]
                    })
            }
        }
        .border(Color.red)
    }
}

extension HorizontalAlignment {
    
    struct CustomVertivalCenter: AlignmentID {
        
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[HorizontalAlignment.center]
        }
    }
    static let customVerticalCenter = HorizontalAlignment(CustomVertivalCenter.self)
}

#Preview {
    VerticalCenterExample()
}
