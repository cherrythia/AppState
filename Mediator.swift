//
//  Mediator.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 10/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

import UIKit

class Mediator: MediatorProtocol {
    
    private let queue = dispatch_queue_create("MediatorPattern", DISPATCH_QUEUE_CONCURRENT) //concurrency protection
    var usersArray :[UserProtocol]? = [User]()
    
    func broadcastMessage(sender: UserProtocol, message: AnyObject) {
        dispatch_barrier_sync(self.queue) { () -> Void in
            
            guard let users = self.usersArray else {        //make sure the usersArray is not nil
                return
            }
            
            for u in users {
                if u as! User !== sender as! User {         //iteration to make sure that current user is different from the user sending the message
                    u.receiveMessage(message)
                }
            }
        }
    }
    
    func register(users: UserProtocol) {
        dispatch_barrier_sync(self.queue) { () -> Void in
            self.usersArray?.append(users)
        }
    }
}
