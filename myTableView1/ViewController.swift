//
//  ViewController.swift
//  myTableView1
//
//  Created by Apple MacBook Pro on 1/20/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Arr:[String]=["My","Exam","Has","Done"]
    
    @IBOutlet weak var Tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Tableview.delegate=self
        Tableview.dataSource=self
        // Do any additional setup after loading the view.
    }
    
  
    
}

extension ViewController:UITableViewDataSource, UITableViewDelegate{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Arr.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell=tableView.dequeueReusableCell(withIdentifier: "cell")
  
    cell?.textLabel?.text=Arr[indexPath.row]
    return cell!
    
}
}

