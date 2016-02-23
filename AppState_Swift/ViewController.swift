//
//  ViewController.swift
//  AppState_Swift
//
//  Created by Chia Wei Zheng Terry on 5/2/16.
//  Copyright © 2016 Chia Wei Zheng Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var appDevice : AppDevice!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.appDevice = AppDevice.init()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "appStarted", name: UIApplicationDidBecomeActiveNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "homeButtonPressed", name: UIApplicationDidEnterBackgroundNotification, object: nil)
        
        mediatorTestFunc()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func connecting(sender: AnyObject) {
        self.appDevice.connectingToDeivce()
    }

    @IBAction func disconnecting(sender: AnyObject) {
        self.appDevice.disconnectingToDevice()
    }

    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func appStarted() {
        self.appDevice.startingApp()
    }
    
    func homeButtonPressed() {
        self.appDevice.quittingApp()
    }
    
    func mediatorTestFunc() {
    
        let user1 = User(name: "Julien")
        let user2 = User(name: "Helmi")
        let user3 = User(name: "Adrien")
        let user4 = User(name: "Raphael")
        
        let mediator1 = Mediator()
    
        mediator1.register(user1)
        mediator1.register(user2)
        mediator1.register(user3)
        
        user1.sendMessage(mediator1, message: "messagefromuser1 from \(user1.name)")
        
        let mediator2 = Mediator()
        mediator2.register(user2)
        mediator2.register(user4)
        
        user2.sendMessage(mediator2, message: "MessageFromUser2 from \(user2.name)")
    }
}

