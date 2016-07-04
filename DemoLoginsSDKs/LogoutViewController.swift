//
//  LogoutViewController.swift
//  DemoLoginsSDKs
//
//  Created by Layne Faler on 7/1/16.
//  Copyright © 2016 Layne Faler. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LogoutViewController: UIViewController {
    
    
    @IBOutlet weak var logoutTitleLabel: UILabel!
    @IBOutlet weak var logoutButton: UIBarButtonItem!
    
    @IBAction func logoutButtonPressed(sender: AnyObject) {
        FBSDKLoginManager().logOut()
        GIDSignIn.sharedInstance().signOut()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutTitleLabel.text = "Yay! It works!"
    }

}
