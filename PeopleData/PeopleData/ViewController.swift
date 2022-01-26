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
        // Do any additional setup after loading the view.
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].firstName
        cell.detailTextLabel?.text = String(data[indexPath.row].height)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
