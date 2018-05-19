//
//  StartTakingChargeWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let startTakingChargeMaleViewIdentifier = "StartTakingChargeMale"
let startTakingChargeFemaleViewIdentifier = "StartTakingChargeFemale"

let startTakeChargeShampooViewIdentifier = "StartTakeChargeShampoo"
let startTakeChargeConditionerViewIdentifier = "StartTakeChargeConditioner"
let startTakeChargeHairTreatmentViewIdentifier = "StartTakeChargeHairTreatment"
let startTakeChargeHairTreatmentMaleViewIdentifier = "StartTakeChargeHairTreatmentMale"
let startTakeChargeWigsViewIdentifier = "StartTakeChargeWigs"
let startTakeChargeSpecialistViewIdentifier = "StartTakeChargeSpecialist"
let startTakeChargeTreatmentViewIdentifier = "StartTakeChargeTreatmentOptions"
let hairLogViewScreenIdentifier2 = "HairLogViewScreen"

class StartTakingChargeWireframe: BaseWireframe {
    var takeChargeViewMale : StartTakingChargeMale?
    var takeChargeViewFemale : StartTakingChargeFemale?
    
    var takeChargeViewTreatmentOptions : StartTakeChargeTreatmentOptions?
    var takeChargeViewSpecialist : StartTakeChargeSpecialist?
    var takeChargeViewShampoo : StartTakeChargeShampoo?
    var takeChargeViewConditioner : StartTakeChargeConditioner?
    var takeChargeViewHairTreatments : StartTakeChargeHairTreatment?
    var takeChargeViewHairTreatmentsMale : StartTakeChargeHairTreatmentMale?
    var takeChargeViewWigs : StartTakeChargeWigs?
    var hairLogViewScreen : HairLogViewScreen?
    
    func presentStartTakingChargeMaleViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakingChargeMaleViewController()
        takeChargeViewMale = newViewController
        takeChargeViewMale?.startTakeChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeFemaleViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakingChargeFemaleViewController()
        takeChargeViewFemale = newViewController
        takeChargeViewFemale?.startTakeChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeTreatmentOptionsViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakeChargeTreatmentOptionsViewController()
        takeChargeViewTreatmentOptions = newViewController
        takeChargeViewTreatmentOptions?.startTakeChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeSpecialistViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakeChargeSpecialistViewController()
        takeChargeViewSpecialist = newViewController
        takeChargeViewSpecialist?.startTakingChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeShampooViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakeChargeShampooViewController()
        takeChargeViewShampoo = newViewController
        takeChargeViewShampoo?.startTakingChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeConditionerViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakeChargeConditionerViewController()
        takeChargeViewConditioner = newViewController
        takeChargeViewConditioner?.startTakingChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeHairTreatmentViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakeChargeHairTreatmentViewController()
        takeChargeViewHairTreatments = newViewController
        takeChargeViewHairTreatments?.startTakingChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeHairTreatmentMaleViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakeChargeHairTreatmentMaleViewController()
        takeChargeViewHairTreatmentsMale = newViewController
        takeChargeViewHairTreatmentsMale?.startTakingChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentStartTakingChargeWigsViewFromViewController(_ viewController: UIViewController) {
        let newViewController = startTakeChargeWigsViewController()
        takeChargeViewWigs = newViewController
        takeChargeViewWigs?.startTakingChargeWireframe = self
        //calibratingView?.eventHandler = calibratingPresenter
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentHairLogViewFromViewController(_ viewController: UIViewController) {
        let newViewController = hairLogViewScreenController()
        hairLogViewScreen = newViewController
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    
    //========================
    
    func startTakingChargeMaleViewController() -> StartTakingChargeMale {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakingChargeMaleViewIdentifier) as! StartTakingChargeMale
        return viewcontroller
    }
    
    func startTakingChargeFemaleViewController() -> StartTakingChargeFemale {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakingChargeFemaleViewIdentifier) as! StartTakingChargeFemale
        return viewcontroller
    }
    
    func startTakeChargeShampooViewController() -> StartTakeChargeShampoo {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakeChargeShampooViewIdentifier) as! StartTakeChargeShampoo
        return viewcontroller
    }
    
    func startTakeChargeConditionerViewController() -> StartTakeChargeConditioner {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakeChargeConditionerViewIdentifier) as! StartTakeChargeConditioner
        return viewcontroller
    }
    
    func startTakeChargeHairTreatmentViewController() -> StartTakeChargeHairTreatment {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakeChargeHairTreatmentViewIdentifier) as! StartTakeChargeHairTreatment
        return viewcontroller
    }
    
    func startTakeChargeHairTreatmentMaleViewController() -> StartTakeChargeHairTreatmentMale {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakeChargeHairTreatmentMaleViewIdentifier) as! StartTakeChargeHairTreatmentMale
        return viewcontroller
    }
    
    func startTakeChargeWigsViewController() -> StartTakeChargeWigs {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakeChargeWigsViewIdentifier) as! StartTakeChargeWigs
        return viewcontroller
    }
    
    func startTakeChargeSpecialistViewController() -> StartTakeChargeSpecialist {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakeChargeSpecialistViewIdentifier) as! StartTakeChargeSpecialist
        return viewcontroller
    }
    
    func startTakeChargeTreatmentOptionsViewController() -> StartTakeChargeTreatmentOptions {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: startTakeChargeTreatmentViewIdentifier) as! StartTakeChargeTreatmentOptions
        return viewcontroller
    }
    
    func hairLogViewScreenController() -> HairLogViewScreen {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: hairLogViewScreenIdentifier2) as! HairLogViewScreen
        return viewcontroller
    }
}
