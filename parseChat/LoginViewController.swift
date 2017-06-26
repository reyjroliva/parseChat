//
//  LoginViewController.swift
//  parseChat
//
//  Created by Rey Oliva on 6/26/17.
//  Copyright © 2017 Rey Oliva. All rights reserved.
//

import UIKit
import Parse
class LoginViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func signUpButton(_ sender: Any) {
        // initialize a user object
        let newUser = PFUser()
        
        // set user properties
        newUser.username = username.text
        //newUser.email = email.text
        newUser.password = password.text
        
        // call sign up function on the object
        newUser.signUpInBackground { (success: Bool, error: Error?) in
            if let error = error {
                print(error.localizedDescription)
                let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
                
                // create a cancel action
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                self.present(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }

            } else {
                print("User Registered successfully")
                // manually segue to logged in view
            }
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        let username = self.username.text ?? ""
        let password = self.password.text ?? ""
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
            if let error = error {
                print("User log in failed: \(error.localizedDescription)")
                let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
                
                // create a cancel action
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                self.present(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
            } else {
                print("User logged in successfully")
                // display view controller that needs to shown after successful login
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
