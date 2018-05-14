//
//  ScalpCaptureWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let scalpCaptureViewIdentifier = "ScalpCaptureView"

class ScalpCaptureWireframe: BaseWireframe {
    var scalpCaptureView : ScalpCaptureView?
    
    func presentScalpCaptureViewFromViewController(_ viewController: UIViewController) {
        let newViewController = scalpCaptureViewController()
        scalpCaptureView = newViewController
        //scalpCaptureView?.eventHandler = welcomePresenter
        //welcomePresenter?.view = welcomeViewController
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func scalpCaptureViewController() -> ScalpCaptureView {
//        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: scalpCaptureViewIdentifier) as! ScalpCaptureView
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: "ScalpCaptureView") as! ScalpCaptureView
        return viewcontroller
    }
}
