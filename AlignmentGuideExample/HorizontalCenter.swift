//
//  HorizontalCenter.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 10.07.2024.
//

import SwiftUI

struct HorizontalCenterExample: View {
    
    var body: some View {
        
        HStack(alignment: .customHorizontalCenter, spacing: 16) {
            Image(systemName: "sun.min.fill")
            VStack(alignment: .leading, spacing: 16) {
                
                Text("Theme")
                    .font(.title)
                
                Text("Sorting keys for json encoding")
                    .font(.title2)
                    .alignmentGuide(.customHorizontalCenter, computeValue: {
                        $0[VerticalAlignment.center]
                    })
                
                Text("The JsonObject representation will preserve insertion order, whether you build the object with empty and add or with from or fromIterable ")
            }
        }
        .border(Color.red)
    }
}

extension VerticalAlignment {
    
    private enum CustomHorizontalCenter: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[VerticalAlignment.center]
        }
    }
    static let customHorizontalCenter = VerticalAlignment(CustomHorizontalCenter.self)
}

#Preview {
    HorizontalCenterExample()
}
