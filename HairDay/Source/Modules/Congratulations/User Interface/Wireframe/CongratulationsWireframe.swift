//
//  CongratulationsWireframe.swift
//  HairDay
//
//  Created by Enrico Boller on 19/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

let congratulationsViewIdentifier = "CongratulationsView"
let congratulationsShampooViewIdentifier = "CongratulationsShampooView"
let congratulationsConditionerViewIdentifier = "CongratulationsConditionerView"
let congratulationsHairTreatmentViewIdentifier = "CongratulationsHairTreatment"
let congratulationsHairDyesViewIdentifier = "CongratulationsHairDyes"
let congratulationsHairDressersViewIdentifier = "CongratulationsHairDressers"
let hairLogViewScreenIdentifier = "HairLogViewScreen"

class CongratulationsWireframe: BaseWireframe {
    var congratulationsView : CongratulationsView?
    var congratulationsShampooView : CongratulationsShampooView?
    var congratulationsConditionerView : CongratulationsConditionerView?
    var congratulationsHairTreatmentView : CongratulationsHairTreatment?
    var congratulationsHairDyesView : CongratulationsHairDyes?
    var congratulationsHairDressersView : CongratulationsHairDressers?
    var hairLogViewScreen : HairLogViewScreen?
    
    func presentCongratulationsViewFromViewController(_ viewController: UIViewController) {
        let newViewController = congratulationsViewController()
        congratulationsView = newViewController
        congratulationsView?.congratulationsWireframe = self
        //enterNamePresenter?.view = scalpCaptureOptionsView
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentShampooViewFromViewController(_ viewController: UIViewController) {
        let newViewController = congratulationsShampooViewController()
        congratulationsShampooView = newViewController
        congratulationsShampooView?.congratulationsWireframe = self
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentConditionerViewFromViewController(_ viewController: UIViewController) {
        let newViewController = congratulationsConditionerViewController()
        congratulationsConditionerView = newViewController
        congratulationsConditionerView?.congratulationsWireframe = self
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentHairTreatmentViewFromViewController(_ viewController: UIViewController) {
        let newViewController = congratulationsHairTreatmentViewController()
        congratulationsHairTreatmentView = newViewController
        congratulationsHairTreatmentView?.congratulationsWireframe = self
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentHairDyesViewFromViewController(_ viewController: UIViewController) {
        let newViewController = congratulationsHairDyesViewController()
        congratulationsHairDyesView = newViewController
        congratulationsHairDyesView?.congratulationsWireframe = self
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentHairDressersViewFromViewController(_ viewController: UIViewController) {
        let newViewController = congratulationsHairDressersViewController()
        congratulationsHairDressersView = newViewController
        congratulationsHairDressersView?.congratulationsWireframe = self
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    func presentHairLogViewFromViewController(_ viewController: UIViewController) {
        let newViewController = hairLogViewScreenController()
        hairLogViewScreen = newViewController
        viewController.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    
    func congratulationsViewController() -> CongratulationsView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: congratulationsViewIdentifier) as! CongratulationsView
        return viewcontroller
    }
    
    func congratulationsShampooViewController() -> CongratulationsShampooView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: congratulationsShampooViewIdentifier) as! CongratulationsShampooView
        return viewcontroller
    }
    
    func congratulationsConditionerViewController() -> CongratulationsConditionerView {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: congratulationsConditionerViewIdentifier) as! CongratulationsConditionerView
        return viewcontroller
    }
    
    func congratulationsHairTreatmentViewController() -> CongratulationsHairTreatment {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: congratulationsHairTreatmentViewIdentifier) as! CongratulationsHairTreatment
        return viewcontroller
    }
    
    func congratulationsHairDyesViewController() -> CongratulationsHairDyes {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: congratulationsHairDyesViewIdentifier) as! CongratulationsHairDyes
        return viewcontroller
    }
    
    func congratulationsHairDressersViewController() -> CongratulationsHairDressers {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: congratulationsHairDressersViewIdentifier) as! CongratulationsHairDressers
        return viewcontroller
    }
    
    func hairLogViewScreenController() -> HairLogViewScreen {
        let viewcontroller = mainStoryBoard().instantiateViewController(withIdentifier: hairLogViewScreenIdentifier) as! HairLogViewScreen
        return viewcontroller
    }

}
