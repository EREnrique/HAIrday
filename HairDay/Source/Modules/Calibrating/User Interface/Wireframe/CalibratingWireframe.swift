//
//  CalibratingWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 18/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let calibratingViewIdentifier = "CalibratingView"

class CalibratingWireframe: BaseWireframe {
    var calibratingView : CalibratingView?
    var congratulationsWireframe : CongratulationsWireframe?
    var startTakingChargeWireframe : StartTakingChargeWireframe?
    var calibratingPresenter : CalibratingPresenter?
    
    func presentCalibratingViewFromViewController(_ viewController: UIViewController) {
        let newViewController = calibratingViewController()
        calibratingView = newViewController
        calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentCongratulationsView() {
        congratulationsWireframe?.presentCongratulationsViewFromViewController(calibratingView!)
    }
    
    func presentStartTakingChargeMaleView() {
        startTakingChargeWireframe?.presentStartTakingChargeMaleViewFromViewController(calibratingView!)
    }
    
    func presentStartTakingChargeFemaleView() {
        startTakingChargeWireframe?.presentStartTakingChargeFemaleViewFromViewController(calibratingView!)
    }
    
    func calibratingViewController() -> CalibratingView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: calibratingViewIdentifier) as! CalibratingView
        return viewcontroller
    }

}
