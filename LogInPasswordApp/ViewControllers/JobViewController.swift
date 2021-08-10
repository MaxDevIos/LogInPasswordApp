//
//  JobViewController.swift
//  LogInPasswordApp
//
//  Created by Maxim Kucherov on 09.08.2021.
//

import UIKit

class JobViewController: UIViewController {

    @IBOutlet var jobLabel: UILabel!

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jobLabel.text = user.person.job.definition
    }

}
