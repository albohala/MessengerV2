//
//  ViewController.swift
//  MessengerV2
//
//  Created by administrator on 02/11/2021.
//

import UIKit
import FirebaseAuth

class ConversationViewController: UIViewController {
    // check to see if user is signed in using ... user defaults
    // they are, stay on the screen. If not, show the login screen
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        do {
//            try FirebaseAuth.Auth.auth().signOut()
//        }
//        catch {
//
//        }
//        DatabaseManager.shared.test() // call test!

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
    
}


