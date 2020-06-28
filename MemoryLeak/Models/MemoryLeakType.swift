//
//  MemoryLeakType.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

enum MemoryLeakType: CaseIterable {
    case referenceCycles, strongReferences, closures
    
    var title: String {
        switch self {
        case .referenceCycles:
            return "Reference Cycles"
        case .strongReferences:
            return "Strong references"
        case .closures:
            return "Closures"
        }
    }
}
