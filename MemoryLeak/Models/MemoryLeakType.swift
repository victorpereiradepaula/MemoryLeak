//
//  MemoryLeakType.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 08/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

enum MemoryLeakType: String, CaseIterable {
    case delegates, closures
    
    var title: String {
        rawValue.prefix(1).uppercased() + rawValue.dropFirst()
    }
}
