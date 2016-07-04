//
//  ViewController.swift
//  DemoLoginsSDKs
//
//  Created by Layne Faler on 7/1/16.
//  Copyright © 2016 Layne Faler. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LoginViewController: UIViewController, GIDSignInUIDelegate {
    
    // MARK: - Login View Controller Oulets
    @IBOutlet weak var loginTitleLabel: UILabel!
    @IBOutlet weak var loginUsernameTextfield: UITextField!
    @IBOutlet weak var loginPasswordTextfield: UITextField!
    @IBOutlet weak var loginEnterButton: UIButton!
    @IBOutlet weak var loginSignUpButton: UIButton!
    @IBOutlet weak var loginFacebookButton: FBSDKLoginButton!
    @IBOutlet weak var loginTwitterButton: UIButton!
    @IBOutlet weak var loginGoogleButton: GIDSignInButton!
    @IBOutlet weak var loginLinkdInButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
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
    
    // Implement these methods only if the GIDSignInUIDelegate is not a subclass of
    // UIViewController.
    
    // Stop the UIActivityIndicatorView animation that was started when the user
    // pressed the Sign In button
    func signInWillDispatch(signIn: GIDSignIn!, error: NSError!) {
        activityIndicator.stopAnimating()
    }
    
    // Present a view that prompts the user to sign in with Google
    func signIn(signIn: GIDSignIn!,
                presentViewController viewController: UIViewController!) {
        self.presentViewController(viewController, animated: true, completion: nil)
    }
    
    // Dismiss the "Sign in with Google" view
    func signIn(signIn: GIDSignIn!,
                dismissViewController viewController: UIViewController!) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

// MARK: - Login View Controller (LinkedIn)
extension LoginViewController {
    
}

// MARK: - Login View Controller ()
extension LoginViewController {
    
}