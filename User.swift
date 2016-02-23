//
//  User.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 10/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

import UIKit

class User: UserProtocol {
    
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    func sendMessage(mediator: MediatorProtocol, message: AnyObject) {
        mediator.broadcastMessage(self, message: message as AnyObject)
    }
    
    func receiveMessage(message: AnyObject) {
        print("\(self.name) received \(String(message))")
    }
}
