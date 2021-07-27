//
//  WelcomeViewController.swift
//  LogInPasswordApp
//
//  Created by Maxim Kucherov on 27.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

//MARK: - IB Outlets
    @IBOutlet var userNameLabel: UILabel!
    
//MARK: - Public Properties
    var userName = ""
    
//MARK: - Private Properties
    private let firstColor: UIColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    private let secondColor: UIColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    
    
//MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addVertualCradientLayer(topColor: firstColor, bottomColor: secondColor)
        userNameLabel.text = "Welcome, \(userName)!"
    }
}

//MARK: - Extension
extension UIView {
    func addVertualCradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        layer.insertSublayer(gradient, at: 0)
    }
}
