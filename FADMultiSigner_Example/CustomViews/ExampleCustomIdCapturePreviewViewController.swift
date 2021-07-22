//
//  ExampleCustomIdCapturePreviewViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 15/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomIdCapturePreviewViewController: UIViewController {
    @IBOutlet weak var btnCancel: UIButton!
    @IBOutlet weak var imgPreview: UIImageView!
    @IBOutlet weak var btnRetry: UIButton!
    @IBOutlet weak var btnContine: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ExampleCustomIdCapturePreviewViewController: CustomIdCapturePreviewViewUIObjects{
    func getIdCapturePreviewCancelBtn() -> UIButton {
        return btnCancel
    }
    
    func getIdCapturePreviewRetryBtn() -> UIButton {
        return btnRetry
    }
    
    func getIdCapturePreviewImage() -> UIImageView {
        return imgPreview
    }
    
    func getIdCapturePreviewContinueBtn() -> UIButton {
        return btnContine
    }
    
    
}
