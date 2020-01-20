//
//  ViewController.swift
//  myTableView1
//
//  Created by Apple MacBook Pro on 1/20/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var LoginBtn: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginBtn.layer.cornerRadius = 7
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        if(self.emailTextField.text == "kmarif1432@gmail.com" && self.passwordTextField.text == "1234"){
                let vc = storyboard?.instantiateViewController(identifier: "SelectionViewController") as! SelectionViewController
                      self.navigationController?.pushViewController(vc, animated: true)
            }
        else if(self.emailTextField.text==nil){
            let alert = UIAlertController(title: "Error!", message: "Enter your Email.", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        else if(self.passwordTextField.text==nil){
           let alert = UIAlertController(title: "Error!", message: "Enter your password.", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
        else if(self.emailTextField.text == nil && self.passwordTextField.text==nil){
            let alert = UIAlertController(title: "Error!", message: "Enter your email an password", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
            

            self.present(alert, animated: true)
        }
        else{
            
            let alert = UIAlertController(title: "Error!", message: "Email or Password doesn't match", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
            

            self.present(alert, animated: true)
        }
        
      
        
    
    
  
    
}

}
