//
//  ScalpCaptureView.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit
import AVFoundation

class ScalpCaptureView: BaseView, AVCapturePhotoCaptureDelegate {
    @IBOutlet weak var cameraView: UIView!
    
    var eventHandler : ScalpCaptureModuleProtocol?
    var captureSession = AVCaptureSession()
    var backCamera : AVCaptureDevice?
    var frontCamera : AVCaptureDevice?
    var currentCamera : AVCaptureDevice?
    
    var photoOutput : AVCapturePhotoOutput?
    
    var cameraPreviewLayer : AVCaptureVideoPreviewLayer?
    var image : UIImage?
    var isBackCamera = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupCaptureSession()
        setupDevice()
        setupInitialCameraView()
        setupInputOutput()
        setupPreviewLayer()
        startRunningCaptureSession()
    }
    
    //MARK: Helper Methods
    func setupCaptureSession() {
        captureSession.sessionPreset = AVCaptureSession.Preset.photo
    }
    
    func setupDevice() {
        let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(
            deviceTypes: [AVCaptureDevice.DeviceType.builtInWideAngleCamera],
            mediaType: AVMediaType.video,
            position: AVCaptureDevice.Position.unspecified)
        let devices = deviceDiscoverySession.devices
        
        for device in devices {
            if device.position == AVCaptureDevice.Position.back {
                backCamera = device
            } else if device.position == AVCaptureDevice.Position.front {
                frontCamera = device
            }
        }
    }
    
    func setupInitialCameraView() {
        currentCamera = backCamera
        isBackCamera = true
    }
    
    func setupInputOutput() {
        do {
            let captureDeviceInput = try AVCaptureDeviceInput(device: currentCamera!)
            captureSession.addInput(captureDeviceInput)
            photoOutput = AVCapturePhotoOutput()
            photoOutput?.setPreparedPhotoSettingsArray(
                [AVCapturePhotoSettings(format: [AVVideoCodecKey: AVVideoCodecType.jpeg])],
                completionHandler: nil)
            let captureSessionOutputs = captureSession.outputs
            guard captureSessionOutputs.count > 0 else {
                captureSession.addOutput(photoOutput!)
                return
            }
        } catch {
            print(error)
        }
    }
    
    func setupPreviewLayer() {
        cameraPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        cameraPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        cameraPreviewLayer?.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
        cameraPreviewLayer?.frame = cameraView.frame
        cameraView.layer.insertSublayer(cameraPreviewLayer!, at: 0)
    }
    
    func resetPreviewLayer() {
        cameraPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        cameraPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        cameraPreviewLayer?.connection?.videoOrientation = AVCaptureVideoOrientation.portrait
        cameraPreviewLayer?.frame = cameraView.bounds
        cameraView.layer.insertSublayer(cameraPreviewLayer!, at: 0)
    }
    
    func startRunningCaptureSession() {
        captureSession.startRunning()
    }
    
    func resetCameraSpecs() {
        captureSession = AVCaptureSession()
        photoOutput = nil
        cameraPreviewLayer?.removeFromSuperlayer()
        cameraPreviewLayer = nil
    }
    
    //MARK: Action Methods
    
    @IBAction func capturePhoto(_ sender: Any) {
        let settings = AVCapturePhotoSettings()
        photoOutput?.capturePhoto(with: settings, delegate: self)
    }
    
    @IBAction func switchCamera(_ sender: Any) {
        if currentCamera == backCamera {
            currentCamera = frontCamera
            isBackCamera = false
        } else {
            currentCamera = backCamera
            isBackCamera = true
        }

        if let inputs = captureSession.inputs as? [AVCaptureDeviceInput] {
            for input in inputs {
                captureSession.removeInput(input)
            }
        }
        resetCameraSpecs()
        
        setupCaptureSession()
        setupDevice()
        setupInputOutput()
        resetPreviewLayer()
        startRunningCaptureSession()        
    }
    
    //MARK: AVCapturePhotoCaptureDelegate Methods
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if let imageData = photo.fileDataRepresentation() {
            image = UIImage(data: imageData)
            eventHandler?.specifyUserScalp(scalpImage: image!)
        }
    }
    
}
