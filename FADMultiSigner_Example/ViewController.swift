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
        
        FADMultiSigner.initProcess(window: UIApplication.shared.keyWindow!, constants: fadMultiConstants, onSuccess: {
            print ("Success")
            self.returnToOriginalViewController()
        }, onCancel: {
            print("Cancel")
            self.returnToOriginalViewController()
        }) {
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
        
        //FaceTec
        fadMultiConstants.zoomPublicKey = "-----BEGIN PUBLIC KEY-----\n" +
            "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5PxZ3DLj+zP6T6HFgzzk\n" +
            "M77LdzP3fojBoLasw7EfzvLMnJNUlyRb5m8e5QyyJxI+wRjsALHvFgLzGwxM8ehz\n" +
            "DqqBZed+f4w33GgQXFZOS4AOvyPbALgCYoLehigLAbbCNTkeY5RDcmmSI/sbp+s6\n" +
            "mAiAKKvCdIqe17bltZ/rfEoL3gPKEfLXeN549LTj3XBp0hvG4loQ6eC1E1tRzSkf\n" +
            "GJD4GIVvR+j12gXAaftj3ahfYxioBH7F7HQxzmWkwDyn3bqU54eaiB7f0ftsPpWM\n" +
            "ceUaqkL2DZUvgN0efEJjnWy5y1/Gkq5GGWCROI9XG/SwXJ30BbVUehTbVcD70+ZF\n" +
            "8QIDAQAB\n" +
            "-----END PUBLIC KEY-----"
        fadMultiConstants.zoomLicenceKey = "dC1PnDvQFFAkQayLllJ2CACxis0AO548"
        fadMultiConstants.zoomServerBaseURL = "https://uatfacetec.firmaautografa.com"
        fadMultiConstants.zoomProductionKeyText = "# FaceTec Mobile SDK license\n" +
            "appId      = com.fad.bio*,com.na-at.fad,com.na_at.fad\n" +
            "expiryDate = 2021-09-10\n" +
            "key        = 00304502203cbf0dd6e48b7515e3a31e4ea983f4cabf8d158397cfa4a94347d93ba16949b80221009542f189a46200203807e9c52d61366b42d3f31b403b82e13ee92f6be30d85c4"
        fadMultiConstants.faceComparisonValue = 55
        
        //Acuant
        fadMultiConstants.acUserName = "Acuant_Admin_PROD@na-at.com.mx"
        fadMultiConstants.acPassword = "R3Z^gm^6C^YNM^vQ"
        fadMultiConstants.acSubscription = "3d0a5941-4528-475c-a8ce-15e8f3bca0df"
        fadMultiConstants.acFrmEndpoint = "https://frm.acuant.net"
        fadMultiConstants.acPassiveLivenessEndpoint = "https://us.passlive.acuant.net"
        fadMultiConstants.acHealthInsuranceEndpoint = "https://medicscan.acuant.net"
        fadMultiConstants.acIdEndpoint = "https://services.assureid.net"
        fadMultiConstants.acAcasEndpoint = "https://acas.acuant.net"
        fadMultiConstants.acOzoneEndpoint = "https://ozone.acuant.net"
        return fadMultiConstants
    }
    
    
    func returnToOriginalViewController() {
        //        FADModule.cleanProcess()
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.doFADChangeOrientation(orientation: .portrait)
            appDelegate.window?.rootViewController = self
            appDelegate.window?.makeKeyAndVisible()
        }
    }
    
}

