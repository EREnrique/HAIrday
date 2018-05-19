//
//  AppDependencies.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies: NSObject {
    private var mainWireFrame : WelcomeWireframe?
    
    override init() {
        super.init()
        //configureLibraries()
        configureDependencies()
    }
    
    func showWelcomeViewAndClearSession(InWindow window: UIWindow) {
        mainWireFrame?.presentWelcomeViewInterfaceFromWindow(Window: window)
    }
    
    func installRootViewController(InWindow window : UIWindow) {
        mainWireFrame?.presentWelcomeViewInterfaceFromWindow(Window: window)
    }
    
    func configureDependencies() {
        let root = RootWireframe()
        
        // Wireframes
        let welcomeWireframe = WelcomeWireframe()
        let scalpCaptureWireframe = ScalpCaptureWireframe()
        let scalpCaptureOptionsWireframe = ScalpCaptureOptionsWireframe()
        let enterNameWireframe = EnterNameWireframe()
        let learnMoreWireframe = LearnMoreWireframe()
        let calibratingWireframe = CalibratingWireframe()
        let congratulationsWireframe = CongratulationsWireframe()
        let startTakingChargeWireframe = StartTakingChargeWireframe()
        
        //Welcome Module Classes
        let welcomeInteractor = WelcomeInteractor()
        let welcomePresenter = WelcomePresenter()
        
        welcomeInteractor.output = welcomePresenter
        
        welcomePresenter.interactor = welcomeInteractor
        welcomePresenter.welcomeWireframe = welcomeWireframe
        
        welcomeWireframe.welcomePresenter = welcomePresenter
        welcomeWireframe.scalpCaptureWireframe = scalpCaptureWireframe
        welcomeWireframe.rootWireFrame = root
        
        mainWireFrame = welcomeWireframe
        
        //Scalp Capture Module Classes
        let scalpCaptureInteractor = ScalpCaptureInteractor()
        let scalpCapturePresenter = ScalpCapturePresenter()
        
        scalpCaptureInteractor.output = scalpCapturePresenter
        
        scalpCapturePresenter.interactor = scalpCaptureInteractor
        scalpCapturePresenter.scalpCaptureWireframe = scalpCaptureWireframe
        
        scalpCaptureWireframe.scalpCapturePresenter = scalpCapturePresenter
        scalpCaptureWireframe.scalpCaptureOptionsWireframe = scalpCaptureOptionsWireframe
        
        //Scalp Capture Options Module Classes
        let scalpCaptureOptionsInteractor = ScalpCaptureOptionsInteractor()
        let scalpCaptureOptionsPresenter = ScalpCaptureOptionsPresenter()
        
        scalpCaptureOptionsInteractor.output = scalpCaptureOptionsPresenter
        
        scalpCaptureOptionsPresenter.interactor = scalpCaptureOptionsInteractor
        scalpCaptureOptionsPresenter.scalpCaptureOptionsWireframe = scalpCaptureOptionsWireframe
        
        scalpCaptureOptionsWireframe.scalpCaptureOptionsPresenter = scalpCaptureOptionsPresenter
        scalpCaptureOptionsWireframe.scalpCaptureWireframe = scalpCaptureWireframe
        scalpCaptureOptionsWireframe.enterNameWireframe = enterNameWireframe
        
        //Enter Name Module Classes
        let enterNameInteractor = EnterNameInteractor()
        let enterNamePresenter = EnterNamePresenter()
        
        enterNameInteractor.output = enterNamePresenter
        
        enterNamePresenter.interactor = enterNameInteractor
        enterNamePresenter.enterNameWireframe = enterNameWireframe
        
        enterNameWireframe.enterNamePresenter = enterNamePresenter
        enterNameWireframe.learnMoreWireframe = learnMoreWireframe
        
        //Learn More Module Classes
        let learnMoreInteractor = LearnMoreInteractor()
        let learnMorePresenter = LearnMorePresenter()
        
        learnMoreInteractor.output = learnMorePresenter
        
        learnMorePresenter.interactor = learnMoreInteractor
        learnMorePresenter.learnMoreWireframe = learnMoreWireframe
        
        learnMoreWireframe.learnMorePresenter = learnMorePresenter
        learnMoreWireframe.calibratingWireframe = calibratingWireframe
        
        //Calibrating Module Classes
        let calibratingInteractor = CalibratingInteractor()
        let calibratingPresenter = CalibratingPresenter()
        
        calibratingInteractor.output = calibratingPresenter
        
        calibratingPresenter.interactor = calibratingInteractor
        calibratingPresenter.calibratingWireframe = calibratingWireframe
        
        calibratingWireframe.calibratingPresenter = calibratingPresenter
        calibratingWireframe.congratulationsWireframe = congratulationsWireframe
        calibratingWireframe.startTakingChargeWireframe = startTakingChargeWireframe
    }
    
    
}
