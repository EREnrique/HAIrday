//
//  LearnMoreWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 18/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let learnMoreViewIdentifier = "LearnMoreView"

class LearnMoreWireframe: BaseWireframe {
    var learnMoreView : LearnMoreView?
    var calibratingWireframe : CalibratingWireframe?
    var learnMorePresenter : LearnMorePresenter?
    
    func presentLearnMoreViewFromViewController(_ viewController: UIViewController) {
        let newViewController = learnMoreViewController()
        learnMoreView = newViewController
        learnMoreView?.eventHandler = learnMorePresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentCalibratingView() {
        calibratingWireframe?.presentCalibratingViewFromViewController(learnMoreView!)
    }
    
    func learnMoreViewController() -> LearnMoreView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: learnMoreViewIdentifier) as! LearnMoreView
        return viewcontroller
    }
}
