//
//  ViewModel.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

class ViewModel {
    
    #if DEBUG
    deinit {
        print("deinit: \(Self.self)")
    }
    #endif
}

