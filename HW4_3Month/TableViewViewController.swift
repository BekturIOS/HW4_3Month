//
//  TableViewViewController.swift
//  HW4_3Month
//
//  Created by Бектур Каримов on 4/3/23.
//

import UIKit

class TableViewViewController: UIViewController {
    
    static let id = String(describing: TableViewViewController.self)
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var persons: [Person] = []
    
    public var email: String?
    public var name: String?
    public var image: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: TableViewCell.id, bundle: nil), forCellReuseIdentifier: TableViewCell.id)
        initData()


    }
    func initData () {
        persons.append(Person(name: name!, email: email!, image: "person.circle.fill"))
    }

}

extension TableViewViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

extension TableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.id , for: indexPath) as! TableViewCell
        let model = persons[indexPath.row]
        cell.display(Item: model)
        return cell
        
    }
    
    
    
    
}
