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
        
    }
    
    
}
