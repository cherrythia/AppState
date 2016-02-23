//
//  AppDeviceDisconnectedState.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 5/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

import UIKit


class AppDeviceDisconnectedState: NSObject , State {

    private var appDevice : AppDevice!
    
    //MARK: - Init Methods
    convenience init(appDevice: AppDevice) {
        self.init()
        self.appDevice = appDevice
    }
    
    func connectingToDeivce() {
        self.appDevice.state = self.appDevice.appDeviceConnectedState
    }
    
    func disconnectingToDevice() {
        print("Device is already disconnected")
    }
    
    func startingApp() {
        print("Device is already started")
    }
    
    func quittingApp() {
        self.appDevice.state = self.appDevice.appBackgroundState
    }
    
}
