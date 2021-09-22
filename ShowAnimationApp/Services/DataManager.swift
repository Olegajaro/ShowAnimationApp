//
//  DataManager.swift
//  ShowAnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let presets = [
        "shake", "pop", "morph", "squeeze", "wobble",
        "swing", "flipX", "flipY", "fall", "squeezeLeft",
        "squeezeRight", "squeezeDown", "squeezeUp","slideLeft",
        "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut",
        "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp",
        "zoomIn", "zoomOut", "flash"
    ]
    
    let curves = [
        "spring",
        "linear",
        "easeIn",
        "easeOut",
        "easeInOut"
    ]
    
    let forces = [1.10, 1.20, 1.30, 1.40, 1.50, 1.60, 1.70, 1.80]
    
    let durations = [0.95, 1.0, 1.05, 1.10, 1.15, 1.20, 1.25, 1.30]
    
    let delays = [0.30, 0.35, 0.40, 0.45, 0.50, 0.55]
    
    private init() {}
}
