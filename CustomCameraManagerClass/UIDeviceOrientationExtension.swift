//
//  UIDeviceOrientationExtension.swift
//  
//
//  Created by Mohammad Ali Jafarian on 21/2/18.
//

import UIKit
import AVFoundation

extension UIDeviceOrientation {
    var avCaptureVideoOrientation: AVCaptureVideoOrientation {
        switch self {
        case .portrait:
            return AVCaptureVideoOrientation.portrait
        case .landscapeRight:
            return AVCaptureVideoOrientation.landscapeLeft
        case .landscapeLeft:
            return AVCaptureVideoOrientation.landscapeRight
        case .portraitUpsideDown:
            return AVCaptureVideoOrientation.portraitUpsideDown
        case .faceUp:
            switch UIApplication.shared.statusBarOrientation {
            case .portrait:
                return AVCaptureVideoOrientation.portrait
            case .landscapeLeft:
                return AVCaptureVideoOrientation.landscapeLeft
            case .landscapeRight:
                return AVCaptureVideoOrientation.landscapeRight
            default:
                return AVCaptureVideoOrientation.portrait
            }
        default:
            return AVCaptureVideoOrientation.portrait
        }
    }
}
