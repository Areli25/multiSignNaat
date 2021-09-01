//
//  ExampleCustomCheckDataViewController.swift
//  FADMultiSignerPod_Example
//
//  Created by Daniel Acosta on 14/07/21.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import FADMultiSignerPod

class ExampleCustomCheckDataViewController: UIViewController {
    
    @IBOutlet weak var btnCancel: UIButton!
    
    @IBOutlet weak var btnShowSign: UIButton!
    @IBOutlet weak var btnPlaySignVideo: UIButton!
    @IBOutlet weak var btnPlaySignAudioVideo: UIButton!
    
    @IBOutlet weak var btnRepeatSign: UIButton!
    @IBOutlet weak var btnContinue: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ExampleCustomCheckDataViewController : CustomCheckDataUIObjects {
    func getCheckVideosCancelBtn() -> UIButton {
        return btnCancel
    }
    
    func getCheckVideosShowSignBtn() -> UIButton {
        return self.btnShowSign
    }
    
    func getCheckVideosPlaySignVideoBtn() -> UIButton {
        return self.btnPlaySignVideo
    }
    
    func getCheckVideosPlaySignAudioVideoBtn() -> UIButton {
        return self.btnPlaySignAudioVideo
    }
    
    func getCheckVideosRepeatSignBtn() -> UIButton {
        return self.btnRepeatSign
    }
    
    func getCheckVideosContinueBtn() -> UIButton {
        return self.btnContinue
    }
    
}
