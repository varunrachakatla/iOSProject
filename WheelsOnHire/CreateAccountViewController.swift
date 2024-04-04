//
//  CreateAccountViewController.swift
//  WheelsOnHire
//
//  Created by Koduri,Sai Krishna on 4/4/24.
//

import UIKit
import Firebase
class CreateAccountViewController: UIViewController {

    @IBOutlet weak var emailOL: UITextField!
    @IBOutlet weak var passwordOL: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpBtnClicked(_ sender: Any) {
        guard let email = emailOL.text else{ return }
        guard let password = passwordOL.text else{ return }
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if let e = error{
                print("error")
            }
            else{
                //Go to 
            }
        }
        
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
