//
//  MainViewController.swift
//  ShowAnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animations = Animation.getAnimations()
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        animationView.animation = animations.randomElement()?.preset ?? ""
        animationView.curve = animations.randomElement()?.curve ?? ""
        animationView.force = cgFloat(forces: animations).randomElement() ?? 0
        animationView.duration = cgFloat(durations: animations).randomElement() ?? 0
        animationView.delay = cgFloat(delays: animations).randomElement() ?? 0
        animationView.animate()
    }
    
    private func cgFloat(forces array: [Animation]) -> [CGFloat] {
        array.map { CGFloat($0.force) }
    }
    
    private func cgFloat(durations array: [Animation]) -> [CGFloat] {
        array.map { CGFloat($0.duration) }
    }
    
    private func cgFloat(delays array: [Animation]) -> [CGFloat] {
        array.map { CGFloat($0.delay) }
    }
}

