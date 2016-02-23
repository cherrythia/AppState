//
//  AppDeviceConnectedState.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 5/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

import UIKit

class AppDeviceConnectedState: NSObject , State  {
    
    private var appDevice : AppDevice!
    
    //MARK: - init methods
    
    convenience init(appDevice : AppDevice) {
        self.init()
        self.appDevice = appDevice
    }
    
    //MARK: - <State>

    func connectingToDeivce() {
        print("Device is already connected");
    }
    
    func disconnectingToDevice() {
        self.appDevice.state = self.appDevice.appDeviceDisconnectedState
    }
    
    func startingApp() {
        print("Device has already been started")
    }
    
    func quittingApp() {
        self.appDevice.state = self.appDevice.appBackgroundState
    }
}
