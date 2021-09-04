//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Donggeun Lee on 2021/09/04.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        view.backgroundColor = .systemBlue

    }

   
}
