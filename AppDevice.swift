import UIKit

class AppDevice {
    var appDeviceConnectedState : State!
    var appDeviceDisconnectedState : State!
    var appBackgroundState : State!
    var state : State!
    
    //MARK: - Init Methods
    init() {
        self.appDeviceConnectedState = AppDeviceConnectedState.init(appDevice: self)
        self.appDeviceDisconnectedState = AppDeviceDisconnectedState.init(appDevice: self)
        self.appBackgroundState = AppBackgroundState.init(appDevice: self)
        
        self.state = self.appDeviceDisconnectedState
    }
    
    //MARK: - Public Methods
    func connectingToDeivce() {
        return self.state.connectingToDeivce()
    }
    
    func disconnectingToDevice() {
        return self.state.disconnectingToDevice()
    }
    
    func startingApp() {
        return self.state.startingApp()
    }
    
    func quittingApp() {
        return self.state.quittingApp()
    }

}