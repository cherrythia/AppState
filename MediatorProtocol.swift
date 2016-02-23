//
//  MediatorProtocol.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 10/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

protocol MediatorProtocol {
    var usersArray : [UserProtocol]? { get }
    
    func broadcastMessage(sender : UserProtocol , message : AnyObject)
    func register(users : UserProtocol)
}
