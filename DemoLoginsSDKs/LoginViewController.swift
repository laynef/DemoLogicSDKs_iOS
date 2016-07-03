//
//  ViewController.swift
//  DemoLoginsSDKs
//
//  Created by Layne Faler on 7/1/16.
//  Copyright © 2016 Layne Faler. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - Login View Controller Oulets
    @IBOutlet weak var loginTitleLabel: UILabel!
    @IBOutlet weak var loginUsernameTextfield: UITextField!
    @IBOutlet weak var loginPasswordTextfield: UITextField!
    @IBOutlet weak var loginEnterButton: UIButton!
    @IBOutlet weak var loginSignUpButton: UIButton!
    @IBOutlet weak var loginFacebookButton: UIButton!
    @IBOutlet weak var loginTwitterButton: UIButton!
    @IBOutlet weak var loginGoogleButton: UIButton!
    @IBOutlet weak var loginLinkdInButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK: - Login View Controller (Facebook)
extension LoginViewController {
    
}

// MARK: - Login View Controller (Twitter)
extension LoginViewController {
    
}

// MARK: - Login View Controller (Google)
extension LoginViewController {
    
}

// MARK: - Login View Controller (LinkedIn)
extension LoginViewController {
    
}

// MARK: - Login View Controller ()
extension LoginViewController {
    
}