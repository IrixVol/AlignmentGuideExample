//
//  TwoTextColumns.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 18.08.2024.
//

import SwiftUI

struct TwoTextColumnsExample: View {
    
    var body: some View {
        
        VStack(alignment: .custom, spacing: 16) {
            
            HStack {
                Text("Username").font(Font.body.bold())
                // trailing of the second text will be a leading for children of VStack
                Text("Tatyana")
                    .alignmentGuide(.custom) { $0[.leading] }
            }
            HStack {
                Text("Password").font(Font.body.bold())
                Text("•••••••••••••••••")
                    .alignmentGuide(.custom) { $0[.leading] }
            }
            HStack {
                Text("Email").font(Font.body.bold())
                Text("black@mail.ru")
                    .alignmentGuide(.custom) { $0[.leading] }
            }
        }
        .padding(.all, 16)
        .border(.blue)
    }
}

private extension HorizontalAlignment {
    
    struct CustomAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            return context[.trailing]
        }
    }
    static let custom: HorizontalAlignment = HorizontalAlignment(CustomAlignment.self)
}

#Preview {
    TwoTextColumnsExample()
}
