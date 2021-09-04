//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Donggeun Lee on 2021/09/04.
//

import Foundation
import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    func eventOccurred(with type: Event)
    func start()
    
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
