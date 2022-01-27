//
//  ViewController.swift
//  PeopleData
//
//  Created by Ahmed Fayeq on 25/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [
        Person(firstName: "Ahmed", lastName: "Ashraf", gender: "Male", height: 185, age: 25),
        Person(firstName: "Eslam", lastName: "Ali", gender: "Male", height: 187, age: 25),
        Person(firstName: "Ahmed", lastName: "Sherif", gender: "Male", height: 173, age: 25),
        Person(firstName: "Nour", lastName: "Essam", gender: "Male", height: 168, age: 25)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.cellIdentifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier) as! CustomTableViewCell
        let data = data[indexPath.row]
        let viewModel = CellViewModel(firstName: data.firstName, lastName: data.lastName, height: data.height)
        cell.configure(viewModel: viewModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
}
