//
//  ViewControllerB.swift
//  PassingDataBackDemo
//
//  Created by Sopan M. Sanap on 25/07/19.
//  Copyright © 2019 Sopan M. Sanap. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

    @IBAction func btnGotoCClicked(_ sender: Any) {
        if let vcB = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerC") as? ViewControllerC{
            
            self.navigationController?.pushViewController(vcB, animated: true)
        }
    }
    

}
