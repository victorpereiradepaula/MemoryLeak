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
    func openGCDDeadline()
}

final class ClosuresPresenter: Presenter {
    
    weak var coordinator: ClosureCoordinatorProtocol?
}

// MARK: ClosuresPresenterProtocol
extension ClosuresPresenter: ClosuresPresenterProtocol {
    
    var closureTypes: [ClosureType] {
        ClosureType.allCases
    }
    
    func didSelectCellAt(row: Int) {
        switch closureTypes[row] {
        case .alertAction:
            coordinator?.openAlertAction()
        case .notificationCenter:
            coordinator?.openNotificationCenter()
        case .viewAnimate:
            coordinator?.openViewAnimate()
        case .gcd:
            coordinator?.openGCD()
        case .gcdWithDeadline:
            coordinator?.openGCDDeadline()
        }
    }
}
