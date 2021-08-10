//
//  StudyViewController.swift
//  LogInPasswordApp
//
//  Created by Maxim Kucherov on 04.08.2021.
//

import UIKit

class StudyViewController: UIViewController {

//MARK: - IB Outlet
    @IBOutlet var schoolLabel: UILabel!
    @IBOutlet var firstEdicationLabel: UILabel!
    @IBOutlet var secondEducationLabel: UILabel!
    @IBOutlet var pHDLabel: UILabel!
    
    
//MARK: - Public Properties
    var user: User!
    
    
//MARK: - Override func
    override func viewDidLoad() {
        super.viewDidLoad()
        schoolLabel.text = user.person.study.school
        firstEdicationLabel.text = user.person.study.firstGraduate
        secondEducationLabel.text = user.person.study.secondGraduate
        pHDLabel.text = user.person.study.phD
    }
}
