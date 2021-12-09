//
//  ViewController.swift
//  FADMultiSigner_Example
//
//  Created by Daniel Acosta on 05/07/21.
//

import UIKit
import FADMultiSignerPod

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnFAD (_ sender: Any){
        
        guard let fadMultiConstants = self.getFadMultiConstants() else{
            return
        }
        
        FADMultiSigner.initProcess(window: UIApplication.shared.keyWindow!,
                                   constants: fadMultiConstants) {
            print ("Success")
            self.returnToOriginalViewController()
        } onCancel: {
            print("Cancel")
            self.returnToOriginalViewController()
        } onError: {
            print("Error")
            self.returnToOriginalViewController()
        }

    }
    
    
    func getFadMultiConstants()->FADMultiSignerConstants?{
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            return nil
        }
        let fadMultiConstants = FADMultiSignerConstants()
        fadMultiConstants.orientationDelegate = appDelegate
        fadMultiConstants.appBaseSupportedOrientations = .portrait
        
        fadMultiConstants.ticket = ""
        fadMultiConstants.endpoint_services = "https://uat.firmaautografa.com"
        
        
        fadMultiConstants.showDashboard = true
        fadMultiConstants.isShowPrivacyModule = true
        fadMultiConstants.isShowAuthenticationModule = true
        
//        let relatedProcess = FADMultiRelatedProcess()
//        relatedProcess.fadProcessId = "fa8c6d07-12e1-4739-9c48-b7274a9e30b1"
//        relatedProcess.fadProcessType = 1
//        var relatedProcesses:[FADMultiRelatedProcess] = []
//        relatedProcesses.append(relatedProcess)
//        fadMultiConstants.relatedProcesses = relatedProcesses

        
        fadMultiConstants.minSignLength = 7
        fadMultiConstants.maxSignLength = 15
        fadMultiConstants.minConfLength = 7
        fadMultiConstants.maxConfLength = 40
        
        return fadMultiConstants
    }
    
    
    func returnToOriginalViewController() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.doFADChangeOrientation(orientation: .portrait)
            appDelegate.window?.rootViewController = self
            appDelegate.window?.makeKeyAndVisible()
        }
    }
    
}

