//
//  LogoutViewController.swift
//  DemoLoginsSDKs
//
//  Created by Layne Faler on 7/1/16.
//  Copyright © 2016 Layne Faler. All rights reserved.
//

import UIKit
import GoogleSignIn
import FBSDKLoginKit

class LogoutViewController: UIViewController {
    
    
    @IBOutlet weak var logoutTitleLabel: UILabel!
    @IBOutlet weak var logoutButton: UIBarButtonItem!
    
    @IBAction func logoutButtonPressed(sender: AnyObject) {
        GIDSignIn.sharedInstance().signOut()
        FBSDKLoginManager().logOut()
        
        let signInPage = self.storyboard?.instantiateViewControllerWithIdentifier("LoginViewController") as! LoginViewController
        
        let signInPageNav = UINavigationController(rootViewController: signInPage)
        signInPageNav.navigationBarHidden = true
        
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.window?.rootViewController = signInPageNav
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutTitleLabel.text = "Yay! It works!"
    }

}
