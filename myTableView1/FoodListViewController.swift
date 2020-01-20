//  FoodListViewController.swift
//  myTableView1
//
//  Created by Apple MacBook Pro on 1/20/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//
import UIKit

class FoodListViewController: UIViewController {
    @IBOutlet weak var foodListTableView: UITableView!
    var food:[String] = ["Rice","Dal","Chicken","Beef","Vegetable"]
    override func viewDidLoad() {
        super.viewDidLoad()
        foodListTableView.delegate = self;
        foodListTableView.dataSource = self;
        // Do any additional setup after loading the view.
    }
}

extension FoodListViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = foodListTableView.dequeueReusableCell(withIdentifier: "cells")
        cell?.textLabel?.text = food[indexPath.row]
        return cell!
    }
}
