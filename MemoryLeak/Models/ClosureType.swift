//
//  ClosureType.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

enum ClosureType: CaseIterable {
    case alertAction, notificationCenter
    
    var title: String {
        switch self {
        case .alertAction:
            return "Alert Action"
        case .notificationCenter:
            return "Notification Center"
        }
    }
}
