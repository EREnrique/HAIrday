//
//  RootWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class RootWireframe: NSObject {
    /**
     installs root view controller to app window
     - Parameters:
     - viewcontroller: root view controller
     - window: appdelegate window
     */
    func showRootViewController (rootViewController viewcontroller : UIViewController, inWindow window : UIWindow) {
        let navigationController = navigationControllerfromWindow(window)
        navigationController.viewControllers = [viewcontroller]
    }
    
    /**
     calls root view controller
     - Parameters:
     - window: appdelegate window
     - Returns: returns root view controller
     */
    private func navigationControllerfromWindow (_ window : UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
}
