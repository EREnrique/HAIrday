//
//  ScalpCaptureView.swift
//  HairDay
//
//  Created by Enrico Boller on 15/05/2018.
//  Copyright © 2018 Enrico Boller. All rights reserved.
//

import UIKit
import AVFoundation

class ScalpCaptureView: BaseView {
    @IBOutlet weak var cameraView: UIView!
    
    let captureSession = AVCaptureSession()
    var captureDevice: AVCaptureDevice?
    var previewLayer: AVCaptureVideoPreviewLayer?
    var frontCamera: Bool = false
    var stillImageOutput: AVCaptureStillImageOutput = AVCaptureStillImageOutput()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        captureSession.sessionPreset = AVCaptureSession.Preset.photo
        frontCamera(frontCamera)
        if captureDevice != nil {
            beginSession()
        }
    }
    
    //MARK: Helper Methods
    func beginSession() {
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        self.cameraView.layer.addSublayer(previewLayer!)
        previewLayer?.frame = self.cameraView.layer.bounds
        previewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        captureSession.startRunning()
        stillImageOutput.outputSettings = [AVVideoCodecKey : AVVideoCodecJPEG]
        if captureSession.canAddOutput(stillImageOutput) {
            captureSession.addOutput(stillImageOutput)
        }
    }
    
    func frontCamera(_ front: Bool) {
        let devices = AVCaptureDevice.devices()
        
        clearCaptureDevice()
        
        for device in devices {
            if((device as AnyObject).hasMediaType(AVMediaType.video)) {
                if front {
                    if((device as AnyObject).position == AVCaptureDevice.Position.front) {
                        captureDevice = device as AVCaptureDevice
                        
                        do{
                            try captureSession.addInput(AVCaptureDeviceInput(device: captureDevice!))
                        } catch {
                            
                        }
                        break
                        
                        
                    }
                } else {
                    if((device as AnyObject).position == AVCaptureDevice.Position.back) {
                        captureDevice = device as AVCaptureDevice
                        
                        do{
                            try captureSession.addInput(AVCaptureDeviceInput(device: captureDevice!))
                        } catch {
                            
                        }
                        break
                    }
                }
            }
            
            
        }
        
    }
    
    func clearCaptureDevice() {
        do{
            if captureDevice != nil {
                try captureSession.removeInput(AVCaptureDeviceInput(device: captureDevice!))
            }
        } catch {
            print("Camera Error")
        }
    }
    
    func cameraWithPosition(_ position: AVCaptureDevice.Position) -> AVCaptureDevice? {
        let deviceDescoverySession = AVCaptureDevice.DiscoverySession.init(deviceTypes: [AVCaptureDevice.DeviceType.builtInWideAngleCamera], mediaType: AVMediaType.video, position: AVCaptureDevice.Position.unspecified)
        
        for device in deviceDescoverySession.devices {
            if device.position == position {
                return device
            }
        }
        return nil
    }
    
    //MARK: Action Methods
    
    @IBAction func capturePhoto(_ sender: Any) {
        
    }
    
    @IBAction func switchCamera(_ sender: Any) {
        if frontCamera == true {
            frontCamera = false
        } else {
            frontCamera = true
        }
        let session = AVCaptureSession()
        let currentCameraInput: AVCaptureInput = session.inputs[0]
        session.removeInput(currentCameraInput)
        var newCamera: AVCaptureDevice
        newCamera = AVCaptureDevice.default(for: AVMediaType.video)!
        
        if (currentCameraInput as! AVCaptureDeviceInput).device.position == .back {
            UIView.transition(with: self.cameraView, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                newCamera = self.cameraWithPosition(.front)!
            }, completion: nil)
        } else {
            UIView.transition(with: self.cameraView, duration: 0.5, options: .transitionFlipFromRight, animations: {
                newCamera = self.cameraWithPosition(.back)!
            }, completion: nil)
        }
        do {
            try self.captureSession.addInput(AVCaptureDeviceInput(device: newCamera))
        }
        catch {
            print("error: \(error.localizedDescription)")
        }
    }
    
}
