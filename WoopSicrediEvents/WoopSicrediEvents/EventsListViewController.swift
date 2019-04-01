//
//  ViewController.swift
//  WoopSicrediEvents
//
//  Created by Gabriel Paul on 27/03/19.
//  Copyright © 2019 GP. All rights reserved.
//

import UIKit

class EventsListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension EventsListViewController: StoryboardInstantiable {
    static var viewControllerID: String {
        return "EventsListViewController"
    }
    
    static var storyboardIdentifier: String {
        return "EventsList"
    }
}
