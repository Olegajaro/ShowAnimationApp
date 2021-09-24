//
//  DataManager.swift
//  ShowAnimationApp
//
//  Created by Олег Федоров on 21.09.2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let presets = Spring.AnimationPreset.allCases
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
