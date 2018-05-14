//
//  WelcomeWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let welcomeViewIdentifier = "WelcomeView"

class WelcomeWireframe: BaseWireframe {
    var welcomeView : WelcomeView?
    var rootWireFrame : RootWireframe?
    var scalpCaptureWireframe : ScalpCaptureWireframe?
    var welcomePresenter : WelcomePresenter?
    var window: UIWindow?
    
    func presentWelcomeViewInterfaceFromWindow(Window window : UIWindow) {
        self.window = window
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: welcomeViewIdentifier) as! WelcomeView
        viewcontroller.eventHandler = welcomePresenter
        welcomeView = viewcontroller
        //welcomePresenter?.view = viewcontroller
        rootWireFrame?.showRootViewController(rootViewController: viewcontroller, inWindow: window)
    }
    
    func presentLoginViewFromViewController(_ viewController: UIViewController) {
        let newViewController = welcomeViewController()
        welcomeView = newViewController
        welcomeView?.eventHandler = welcomePresenter
        //welcomePresenter?.view = welcomeViewController
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentScalpCaptureView() {
        scalpCaptureWireframe?.presentScalpCaptureViewFromViewController(welcomeView!)
    }
    
    func welcomeViewController() -> WelcomeView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: welcomeViewIdentifier) as! WelcomeView
        return viewcontroller
    }
    
}
