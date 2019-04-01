//
//  EventsListCoordinator.swift
//  WoopSicrediEvents
//
//  Created by Gabriel Paul on 28/03/19.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class EventsListCoordinator: Coordinator {
    
    var childrenCoordinators: [Coordinator]
    
    private let presenter: UINavigationController
    private var eventsListViewController: EventsListViewController?
    
    
    init (presenter: UINavigationController) {
        self.presenter = presenter
        self.childrenCoordinators = []
    }
    
    func start() {
        let eventsListViewController = EventsListViewController.instantiate()
//        let eventsListViewModel = EventsListViewModel()
//        eventsListViewController.viewModel = eventsListViewModel
        
        self.eventsListViewController = eventsListViewController
        presenter.pushViewController(eventsListViewController, animated: false)
    }
    
//    fileprivate func showEventDetails(event: Event) {
//
//    }
}
