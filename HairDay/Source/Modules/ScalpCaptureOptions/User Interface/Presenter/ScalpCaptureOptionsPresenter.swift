//
//  ScalpCaptureOptionsPresenter.swift
//  HairDay
//
//  Created by Enrico Boller on 17/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit

class ScalpCaptureOptionsPresenter: NSObject,
            ScalpCaptureOptionsModuleProtocol,
            ScalpCaptureOptionsInteractorOutput {
    var interactor : ScalpCaptureOptionsInteractorInput?
    var scalpCaptureOptionsWireframe : ScalpCaptureOptionsWireframe?
    var view : ScalpCaptureOptionsViewProtocol?
    
    //MARK: ScalpCaptureOptionsModuleProtocol Methods
    func fetchCapturedScalpImage() {
        interactor?.fetchCapturedScalpImage()
    }
    
    func redirectToScalpCaptureView() {
        scalpCaptureOptionsWireframe?.presentScalpCaptureView()
    }
    
    func redirectToUserNameView() {
        scalpCaptureOptionsWireframe?.presentEnterNameView()
    }
    
    //MARK: ScalpCaptureOptionsInteractorOutput Methods
    func returnCapturedScalpImage(scalpImage: UIImage) {
        view?.displayFetchedScalpImage(scalpImage: scalpImage)
    }
}
