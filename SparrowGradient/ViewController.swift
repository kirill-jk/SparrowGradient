//
//  ViewController.swift
//  SparrowGradient
//
//  Created by Kirill on 03.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ContainerView: UIView!
    
    override func viewDidLoad() {
        setupUI()
    }

    func setupUI() {
        let myView = UIView()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = ContainerView.bounds
        gradientLayer.colors = [
            UIColor.systemBlue.cgColor,
            UIColor.systemRed.cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        myView.layer.addSublayer(gradientLayer)
        myView.layer.cornerRadius = 16
        myView.clipsToBounds = true
        myView.frame = ContainerView.bounds


        ContainerView.layer.shadowOffset = CGSize(width: 0.0, height: 5)
        ContainerView.layer.shadowOpacity = 0.5
        ContainerView.layer.shadowRadius = 10
        ContainerView.layer.masksToBounds = false
        ContainerView.addSubview(myView)
    }

}


