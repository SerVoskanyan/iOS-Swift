//
//  UserListViewController.swift
//  Lesson 3
//
//  Created by Серик Восканян on 24.05.2023.
//

import UIKit

extension UserListViewController: UITableViewController, UITableViewDataSource {
    override func viewWillDisappear(animated) {
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row]
        return cell
    }
}

extension UserListViewController: UITableViewDelegate {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = user[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: user)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
