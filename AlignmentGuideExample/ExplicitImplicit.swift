//
//  ExplicitImplicit.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 11.08.2024.
//

import SwiftUI

struct ExplicitImplicitExample: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 120, height: 50)
                .alignmentGuide(.leading, computeValue: { dimension in
                    // dimension[.leading] == 0
                    // dimension[explicit: .leading]) == nil
                    return dimension[.trailing]
                })
                .alignmentGuide(.leading, computeValue: { dimension in
                    // dimension[.leading] == 120
                    // dimension[explicit: .leading]) == Optional(120.0)
                    dimension[.trailing]
                })
            
            Rectangle()
                .foregroundColor(.red)
                .frame(width: 100, height: 50)
                .alignmentGuide(.leading, computeValue: { dimension in
                    // dimension[.leading] == 0
                    // dimension[explicit: .leading]) == nil
                    dimension[.trailing]
                })
                .alignmentGuide(.leading, computeValue: { dimension in
                    // dimension[.leading] == 100.0
                    // dimension[explicit: .leading]) == Optional(100.0)
                    dimension[.trailing]
                })
            
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 100, height: 50)
  
        }
        .border(Color.red)
    }

}

#Preview {
    ExplicitImplicitExample()
}
