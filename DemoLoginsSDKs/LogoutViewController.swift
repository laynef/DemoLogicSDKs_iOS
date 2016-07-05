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
import TwitterKit

class LogoutViewController: UIViewController {
    
    
    @IBOutlet weak var logoutTitleLabel: UILabel!
    @IBOutlet weak var logoutButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutTitleLabel.text = "Yay! It works!"
    }

}

// MARK: - Logout Button Action
extension LogoutViewController {
    
    @IBAction func logoutButtonPressed(sender: AnyObject) {
        GIDSignIn.sharedInstance().signOut()
        FBSDKLoginManager().logOut()
        Twitter.sharedInstance().sessionStore.logOutUserID(TWTRAPIClient.clientWithCurrentUser().userID!)
        
        let signInPage = self.storyboard?.instantiateViewControllerWithIdentifier("LoginViewController") as! LoginViewController
        
        let signInPageNav = UINavigationController(rootViewController: signInPage)
        signInPageNav.navigationBarHidden = true
        
        let appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.window?.rootViewController = signInPageNav
    }
    
}
