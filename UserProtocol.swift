//
//  userProtocol.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 10/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

protocol UserProtocol {
    func sendMessage(mediator : MediatorProtocol, message : AnyObject)
    func receiveMessage(message : AnyObject)
}