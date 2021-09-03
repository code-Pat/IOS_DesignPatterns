//
//  ViewController.swift
//  MVVMExample
//
//  Created by Donggeun Lee on 2021/09/03.
//

import UIKit
 
class ViewController: UIViewController, UITableViewDataSource {
    
    private var models = [Person]()
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(
            PersonFollowingTableViewCell.self,
            forCellReuseIdentifier: MVVMExample.PersonFollowingTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.frame = view.bounds
        // Do any additional setup after loading the view.
    }
    
    private func configureModels() {
        let names = [
            "Joe", "Dan", "Jeff", "Jenny", "Emily"
        ]
        for name in names {
            models.append(Person(name: name))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = models[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: MVVMExample.PersonFollowingTableViewCell.identifier,
            for: indexPath
        ) as? PersonFollowingTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(
            with: PersonFollowingTableViewCellViewModel(with: model)
        )
        cell.delegate = self
        return cell
    }
}

extension ViewController: PersonFollowingTableViewCellDelegate {
    func PersonFollowingTableViewCell(_ cell: PersonFollowingTableViewCell, didTapWith viewModel: PersonFollowingTableViewCellViewModel) {
        
   
            
    }
}


