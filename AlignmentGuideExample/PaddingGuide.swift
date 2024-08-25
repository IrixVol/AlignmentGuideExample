//
//  PaddingGuide.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 12.08.2024.
//

import SwiftUI

struct PaddingGuideExample: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Number \(position)")
                    .font(.title)
                    //.padding(.leading, CGFloat(position) * 10)
                    .alignmentGuide(.leading) { _ in
                        CGFloat(position) * -10
                    }
            }
        }
        .border(.red)
    }
}

#Preview {
    PaddingGuideExample()
}
