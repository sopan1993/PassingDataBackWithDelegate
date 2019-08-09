//
//  ViewController.swift
//  PassingDataBackDemo
//
//  Created by Sopan M. Sanap on 25/07/19.
//  Copyright © 2019 Sopan M. Sanap. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController,ViewControllerCDelegate {

    @IBOutlet weak var label: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func passData(myData: String){
        DispatchQueue.main.async {
            self.label.text = myData
        }
        
    }
    
  
    
    @IBAction func btnGotoBClicked(_ sender: Any) {
        if let vcB = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerB") as? ViewControllerB{
            
          self.navigationController?.pushViewController(vcB, animated: true)
        }
        
    }
    

}

