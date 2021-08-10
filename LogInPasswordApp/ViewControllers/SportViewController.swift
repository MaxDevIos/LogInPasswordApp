//
//  SportViewController.swift
//  LogInPasswordApp
//
//  Created by Maxim Kucherov on 09.08.2021.
//

import UIKit

class SportViewController: UIViewController {

    @IBOutlet var firstSportLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstSportLabel.text = user.person.hobby.sport.definition
    }
}
