//
//  HobbyViewController.swift
//  LogInPasswordApp
//
//  Created by Maxim Kucherov on 09.08.2021.
//

import UIKit

class HobbyViewController: UIViewController {

    @IBOutlet var hobbyLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyLabel.text = user.person.hobby.hobbyName
    }
    

    
}
