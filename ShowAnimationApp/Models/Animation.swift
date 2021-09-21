//
//  Animation.swift
//  ShowAnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        let presets = DataManager.shared.presets.shuffled()
        let curves = DataManager.shared.curves
        let forces = DataManager.shared.forces
        let durations = DataManager.shared.durations
        let delays = DataManager.shared.delays
        
        var index = 0
        
        for _ in 1...presets.count {
            let animation = Animation(
                preset: presets[index],
                curve: curves.randomElement() ?? "",
                force: forces.randomElement() ?? 0,
                duration: durations.randomElement() ?? 0,
                delay: delays.randomElement() ?? 0
            )
            index += 1
            animations.append(animation)
        }
        
        return animations
    }
}
