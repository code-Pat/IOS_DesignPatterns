//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Donggeun Lee on 2021/09/04.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        button.setTitle("Tap me!", for: .normal)
    }
    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)
    }

}

