//
//  ViewController.swift
//  RandomlyBeautifulImage
//
//  Created by Станислав Лемешаев on 01.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var categories = ["Airplanes", "Beaches", "Cats", "Dogs", "Earth"]

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
    
}
