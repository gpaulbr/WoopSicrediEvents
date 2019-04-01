//
//  AppDelegate.swift
//  WoopSicrediEvents
//
//  Created by Gabriel Paul on 27/03/19.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var applicationCoordinator: ApplicationCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        startApplicationCoordinator(with: window)
        return true

    }
    
    //MARK: - Helper Methods
    func startApplicationCoordinator(with window: UIWindow) {
        let applicationCoordinator = ApplicationCoordinator(window: window)
        self.applicationCoordinator = applicationCoordinator
        applicationCoordinator.start()
    }
}

