//
//  MainViewController.swift
//  ShowAnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    @IBOutlet var runAnimationButton: SpringButton!
    @IBOutlet var animationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = animation.description
    }
    
    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        sender.animation = "morph"
        sender.duration = 0.5
        sender.curve = "linear"
        sender.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

