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
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animations = Animation.getAnimations()
    private var index = 0
    
    override func viewDidLoad() {
        presetLabel.text = "Preset: \(animations[index].preset)"
        curveLabel.text = "Curve: \(animations[index].curve)"
        forceLabel.text = "Force: \(animations[index].force)"
        durationLabel.text = "Duration: \(animations[index].duration)"
        delayLabel.text = "Delay: \(animations[index].delay)"
    }
    
    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        animationView.animation = animations[index].preset
        animationView.curve = animations[index].curve
        animationView.force = cgFloat(forces: animations)[index]
        animationView.duration = cgFloat(durations: animations)[index]
        animationView.delay = cgFloat(delays: animations)[index]
        animationView.animate()
        
        sender.animation = "morph"
        sender.duration = 0.5
        sender.curve = "linear"
        sender.animate()
        
        presetLabel.text = "Preset: \(animationView.animation)"
        curveLabel.text = "Curve: \(animationView.curve)"
        forceLabel.text = "Force: \(string(from: animationView.force))"
        durationLabel.text = "Duration: \(string(from: animationView.duration))"
        delayLabel.text = "Delay: \(string(from: animationView.delay))"
        
        if index < animations.count - 1 {
            runAnimationButton.setTitle(
                "Run \(animations[index + 1].preset)",
                for: .normal
            )
            index += 1
        } else {
            index = 0
        }
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
    
    private func string(from animationParameter: CGFloat) -> String {
        String(format: "%.2f", animationParameter)
    }
}

