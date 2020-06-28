//
//  PrintSomethingProtocol.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 28/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

protocol PrintSomethingProtocol {
    
    func printSomething()
}

extension PrintSomethingProtocol {
    
    func printSomething() {
        print("Something...")
    }
}
