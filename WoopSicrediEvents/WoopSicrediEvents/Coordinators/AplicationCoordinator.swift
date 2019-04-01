//
//  AplicationCoordinator.swift
//  WoopSicrediEvents
//
//  Created by Gabriel Paul on 28/03/19.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class ApplicationCoordinator: Coordinator {
    public var childrenCoordinators: [Coordinator]
    private let window: UIWindow
    private let rootViewController: UINavigationController
    //model
    
    init(window: UIWindow) {
        self.window = window
        self.rootViewController = UINavigationController()
        self.childrenCoordinators = []
        
        configureNavigationController()
    }
    
    private func configureNavigationController() {
        rootViewController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        rootViewController.navigationBar.shadowImage = UIImage()
        rootViewController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationBar.isTranslucent = true
        rootViewController.view.backgroundColor = .clear
    }
    
    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        showEventsList()
        UITextField.appearance().keyboardAppearance = .light
    }
    
    private func showEventsList() {
        let eventsListCoordinator = EventsListCoordinator(presenter: rootViewController)
        addChild(coordinator: eventsListCoordinator)
        eventsListCoordinator.start()
    }
}
