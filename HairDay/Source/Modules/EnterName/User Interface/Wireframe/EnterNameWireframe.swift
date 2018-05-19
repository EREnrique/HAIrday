//
//  EnterNameWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let enterNameViewIdentifier = "EnterNameView"

class EnterNameWireframe: BaseWireframe {
    var enterNameView : EnterNameView?
    var learnMoreWireframe : LearnMoreWireframe?
    var enterNamePresenter : EnterNamePresenter?
    
    func presentEnterNameViewFromViewController(_ viewController: UIViewController) {
        let newViewController = enterNameViewController()
        enterNameView = newViewController
        enterNameView?.eventHandler = enterNamePresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentLearnMoreView() {
        learnMoreWireframe?.presentLearnMoreViewFromViewController(enterNameView!)
    }
    
    func enterNameViewController() -> EnterNameView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: enterNameViewIdentifier) as! EnterNameView
        return viewcontroller
    }
}
