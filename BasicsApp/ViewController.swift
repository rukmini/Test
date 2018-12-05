//
//  ViewController.swift
//  BasicsApp
//
//  Created by IOSDEV on 24/07/18.
//  Copyright © 2018 ModuleMD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      let resultString =  self.payload(withParams: ["surname":"mathi","first":"rukmini","last":"manohar"])
        print(resultString)
    }
    func payload (withParams params: Dictionary<String,String>) -> String{
        var payload : String = ""
        for  (key,value) in params {
            if payload.count > 0{
                payload.append("&")
            }
            payload.append(key)
            payload.append("=")
            payload.append(value.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
        }
        return payload
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    

}

