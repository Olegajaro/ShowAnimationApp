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
    
    let forces: [Float] = [1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8]
    
    let durations: [Float] = [0.95, 1.0, 1.05, 1.1, 1.15, 1,20, 1.25, 1.30]
    
    let delays: [Float] = [0.3, 0.35, 0.4, 0.45, 0.5, 0.55]
    
    private init() {}
}
