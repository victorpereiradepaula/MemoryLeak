//
//  ClosuresPresenter.swift
//  MemoryLeak
//
//  Created by Victor Pereira on 13/06/20.
//  Copyright © 2020 Victor Pereira. All rights reserved.
//

protocol ClosureCoordinatorProtocol: AnyObject {
    func openNotificationCenter()
    func openAlertAction()
    func openViewAnimate()
    func openGCD()
}

final class ClosuresPresenter: Presenter {
    
    weak var router: ClosureCoordinatorProtocol?
}

// MARK: ClosuresPresenterProtocol
extension ClosuresPresenter: ClosuresPresenterProtocol {
    
    var closureTypes: [ClosureType] {
        ClosureType.allCases
    }
    
    func didSelectCellAt(row: Int) {
        switch closureTypes[row] {
        case .alertAction:
            router?.openAlertAction()
        case .notificationCenter:
            router?.openNotificationCenter()
        }
    }
}
