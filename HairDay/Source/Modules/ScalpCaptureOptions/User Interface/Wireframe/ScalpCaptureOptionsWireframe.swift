//
//  ScalpCaptureOptionsWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let scalpCaptureOptionsViewIdentifier = "ScalpCaptureOptionsView"

class ScalpCaptureOptionsWireframe: BaseWireframe {
    var scalpCaptureOptionsView : ScalpCaptureOptionsView?
    var scalpCaptureWireframe : ScalpCaptureWireframe?
    var enterNameWireframe : EnterNameWireframe?
    var scalpCaptureOptionsPresenter : ScalpCaptureOptionsPresenter?
    
    func presentScalpCaptureOptionsViewFromViewController(_ viewController: UIViewController) {
        let newViewController = scalpCaptureOptionsViewController()
        scalpCaptureOptionsView = newViewController
        scalpCaptureOptionsView?.eventHandler = scalpCaptureOptionsPresenter
        scalpCaptureOptionsPresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentScalpCaptureView() {
        scalpCaptureWireframe?.presentScalpCaptureViewFromViewController(scalpCaptureOptionsView!)
    }
    
    func presentEnterNameView() {
        enterNameWireframe?.presentEnterNameViewFromViewController(scalpCaptureOptionsView!)
    }
    
    func scalpCaptureOptionsViewController() -> ScalpCaptureOptionsView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: scalpCaptureOptionsViewIdentifier) as! ScalpCaptureOptionsView
        return viewcontroller
    }

}
