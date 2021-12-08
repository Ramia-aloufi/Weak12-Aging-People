//
//  ViewController.swift
//  Aging People
//
//  Created by R on 04/05/1443 AH.
//  Copyright © 1443 R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let names = ["Nora","Amaal","Wjdan","Ahad","Ramia","Nora","Amaal","Wjdan","Ahad","Ramia","Nora","Amaal"]
    var age = [Int]()
    let n = 12

    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0...n {
            age.append(Int.random(in: 5...95))
        }
        tableView.delegate = self
        tableView.dataSource = self
        print(age)
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return n
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1")!
        cell.textLabel?.text = names[indexPath.row]
        cell.detailTextLabel?.text = "\(age[indexPath.row]) years old"

        return cell
    }
    
    
}

