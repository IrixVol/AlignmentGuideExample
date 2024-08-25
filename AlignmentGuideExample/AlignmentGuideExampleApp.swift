//
//  AlignmentGuideExampleApp.swift
//  AlignmentGuideExample
//
//  Created by Tatyana on 10.07.2024.
//

import SwiftUI

@main
struct AlignmentGuideExampleApp: App {
    var body: some Scene {
        
        WindowGroup {
            
            NavigationStack {
                
                VStack(spacing: 24) {
                    ForEach(Path.allCases, id: \.self.rawValue) { item in
                        NavigationLink(value: item) {
                            Text(item.rawValue.capitalizingFirstLetter)
                                .font(.title2)
                        }
                    }
                }
                .navigationDestination(for: Path.self) { value in
                    switch value {
                    case .horizontalCenterExample: HorizontalCenterExample()
                    case .verticalCenterExample: VerticalCenterExample()
                    case .diagramVerticalExample: DiagramVerticalExample()
                    case .diagramHorizontalExample: DiagramHorizontalDivided()
                    case .twoTextColumnsExample: TwoTextColumnsExample()
                    case .twoTextColumnsGridExample: TwoTextColumnsGridExample()
                    case .paddingGuideExample: PaddingGuideExample()
                    case .firstThirdAlignmentExample: FirstThirdAlignmentExample()
                    }
                }
            }
        }
    }
}

enum Path: String, CaseIterable {
    case horizontalCenterExample
    case verticalCenterExample
    case diagramVerticalExample
    case diagramHorizontalExample
    case twoTextColumnsExample
    case twoTextColumnsGridExample
    case paddingGuideExample
    case firstThirdAlignmentExample
}

extension String {

    var capitalizingFirstLetter: String {
        prefix(1).capitalized + dropFirst()
    }
}
