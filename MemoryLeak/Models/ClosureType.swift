//
//  ClosureType.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

enum ClosureType: CaseIterable {
    case alertAction, notificationCenter, viewAnimate, gcd, gcdWithDeadline
    
    var title: String {
        switch self {
        case .alertAction:
            return "Alert Action"
        case .notificationCenter:
            return "Notification Center"
        case .viewAnimate:
            return "View Animate"
        case .gcd:
            return "Grand Central Dispatch (GCD)"
        case .gcdWithDeadline:
            return "GCD Deadline"
        }
    }
}
