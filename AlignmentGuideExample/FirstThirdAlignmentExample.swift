//
//  FirstThirdAlignmentExample.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 25.08.2024.
//

import SwiftUI

struct FirstThirdAlignmentExample: View {
    
    var body: some View {
        
        VStack {
            Text("One Third: Red Rectangle top alignment")
            HStack(alignment: .oneThird) {
                
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 50, height: 100)
                
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 50, height: 100)
                    .alignmentGuide(.oneThird, computeValue: { dimension in
                        dimension[VerticalAlignment.top]
                    })
                
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 50, height: 100)
            }
            .border(.red)
            
            Text("One Third: Red Rectangle bottom alignment")
            HStack(alignment: .oneThird) {
                
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(width: 50, height: 100)
                
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 50, height: 100)
                    .alignmentGuide(.oneThird, computeValue: { dimension in
                        dimension[VerticalAlignment.bottom]
                    })
                
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: 50, height: 100)
            }
            .border(.red)
        }

    }
}

extension VerticalAlignment {
    private enum OneThird : AlignmentID {
        static func defaultValue(in dimension: ViewDimensions) -> CGFloat {
            return dimension.height / 3
        }
    }
    static let oneThird = VerticalAlignment(OneThird.self)
}

#Preview {
    FirstThirdAlignmentExample()
}
