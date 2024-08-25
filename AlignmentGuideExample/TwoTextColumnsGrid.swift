//
//  TwoTextColumnsGrid.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 12.08.2024.
//

import SwiftUI

struct TwoTextColumnsGridExample: View {
    
    var body: some View {
        
        Grid(alignment: .leading, verticalSpacing: 8) {
            GridRow() {
                Text("Username").font(Font.body.bold())
                Text("Tatyana")
            }
            GridRow {
                Text("Password").font(Font.body.bold())
                Text("•••••••••••••••••")
            }
            GridRow() {
                VStack(alignment: .leading) {
                    Text("Email").font(Font.body.bold())
                    Text("Обязательное поле")
                        .font(Font.caption)
                        .foregroundColor(.gray)
                }
                Text("black@mail.ru")
            }
        }
        .padding(.all, 16)
        .border(.blue)
    }
}

#Preview {
    TwoTextColumnsGridExample()
}
