//
//  State.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 5/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

import Foundation

@objc protocol State {
    func connectingToDeivce()
    func disconnectingToDevice()
    func startingApp()
    func quittingApp()
}


