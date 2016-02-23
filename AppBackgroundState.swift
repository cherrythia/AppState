//
//  AppBackgroundState.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 5/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

import UIKit

class AppBackgroundState: NSObject , State{

    private var appDevice : AppDevice!
    
    //MARK: - Init Method
    convenience init(appDevice : AppDevice) {
        self.init()
        self.appDevice = appDevice
    }
    
    //MARK: - State
    func connectingToDeivce() {
        print("App is in background")
    }
    
    func disconnectingToDevice() {
        print("App is in background")
    }
    
    func startingApp() {
       self.appDevice.state = self.appDevice.appDeviceDisconnectedState
    }
    
    func quittingApp() {
        print("App is in background")        
    }
    
}
