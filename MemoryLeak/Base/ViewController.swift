//
//  ViewController.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 07/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    internal var basePresenter: PresenterProtocol?
    
    init(nibName: String? = nil) {
        super.init(nibName: nibName, bundle: nil)
    }
    
    init(presenter: PresenterProtocol, nibName: String? = nil) {
        basePresenter = presenter
        super.init(nibName: nibName, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
    
    #if DEBUG
    deinit {
        print("deinit: \(Self.self)")
    }
    #endif
    
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        
//        if let presenter = basePresenter as? NavigationBackPresenterProtocol, parent == nil {
//            presenter.didNavigationBack()
//        }
    }
}
