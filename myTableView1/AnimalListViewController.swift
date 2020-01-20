//
//  AnimalListViewController.swift
//  myTableView1
//
//  Created by Apple MacBook Pro on 1/20/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class AnimalListViewController: UIViewController {

    @IBOutlet weak var animalListTableView: UITableView!
    var animal:[String] = ["Cat", "Tiger", "Dog" , "Panda", "Jaguar"]
    override func viewDidLoad() {
        super.viewDidLoad()
        animalListTableView.delegate = self
        animalListTableView.dataSource = self
    }

}

extension AnimalListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalListTableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = animal[indexPath.row]
        
       return cell!
    }
    
        
        
        
        
}
