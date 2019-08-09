//
//  ViewControllerC.swift
//  PassingDataBackDemo
//
//  Created by Sopan M. Sanap on 25/07/19.
//  Copyright © 2019 Sopan M. Sanap. All rights reserved.
//

import UIKit

protocol ViewControllerCDelegate {
    func passData(myData: String)
}

class ViewControllerC: UIViewController {

    var delegate: ViewControllerCDelegate?
    var completionHandler: ((String) -> Int)?
    
    @IBOutlet weak var txtf: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnGobackToAClicked(_ sender: Any) {
        
        if (self.txtf.text?.isEmpty)!{
            print("textfiled is empty")
            
        }else{

            for controller in self.navigationController!.viewControllers as Array {
                if controller.isKind(of: ViewControllerA.self) {

                    self.delegate = controller as? ViewControllerCDelegate
                    delegate?.passData(myData: self.txtf.text!)
                    _ =  self.navigationController!.popToViewController(controller, animated: true)
                    break
                }
            }
        }
        
    }
    
}
