//
//  FlowerViewController.swift
//  myTableView1
//
//  Created by Apple MacBook Pro on 1/20/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class FlowerViewController: UIViewController {
    var flower:[String]=["Rose","Sun Flower","China Rose"]

    @IBOutlet weak var flowerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        // Do any additional setup after loading the view.
    }
    
extension FlowerViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flower.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=flowerTableView.dequeueReusableCell(withIdentifier: "Flower")
        cell?.textLabel?.text=flower[indexPath.row]
        return cell!
        
    }
    
        
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
