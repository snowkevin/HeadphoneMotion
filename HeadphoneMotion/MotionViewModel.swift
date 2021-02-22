//
//  MotionViewModel.swift
//  HeadphoneMotion
//
//  Created by Kevin Snow on 2/22/21.
//

import Foundation
import SwiftUI
import Combine

import CoreMotion

class HeadphoneMotionViewModel: ObservableObject {    
    @Published var pitch = 0.0
    @Published var roll = 0.0
    @Published var yaw = 0.0
    
    private let headphoneMotion = CMHeadphoneMotionManager()
    
    init() {                
        self.headphoneMotion.startDeviceMotionUpdates(to: .main) { [weak self] (motion, error) in
            if let motion = motion {
                self?.pitch = motion.attitude.pitch
                self?.roll = motion.attitude.roll
                self?.yaw = motion.attitude.yaw
            }
        }
    }
}
