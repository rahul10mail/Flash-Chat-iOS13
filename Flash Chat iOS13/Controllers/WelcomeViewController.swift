//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        let titleText = K.appName
        titleLabel.text = ""
        var characterIndex = 0.0
        for character in titleText {
            Timer.scheduledTimer(withTimeInterval: characterIndex, repeats: false) { (timer) in
                
                self.titleLabel.text?.append(character)
            }
            characterIndex += (1/10)
        }
    }
    

}
