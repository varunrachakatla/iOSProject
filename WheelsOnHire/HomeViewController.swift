//
//  ViewController.swift
//  WheelsOnHire
//
//  Created by Koduri,Sai Krishna on 4/4/24.
//

import UIKit
import Firebase
class HomeViewController: UIViewController {

    @IBOutlet weak var userNameOL: UITextField!
    
    @IBOutlet weak var passwordOL: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sigInClickeBtn(_ sender: Any) {
        guard let email = userNameOL.text else{ return }
        guard let password = passwordOL.text else{ return }
        
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in
            if let e = error{
                print("error")
            }
            else{
                //Go to
                self.performSegue(withIdentifier:"goToNext", sender: self)
            }
        }
    }
    

}

