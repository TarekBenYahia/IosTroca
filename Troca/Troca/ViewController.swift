//
//  ViewController.swift
//  Troca
//
//  Created by Esprit on 11/25/20.
//  Copyright © 2020 Esprit. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    //var
    let URL_USER_LOGIN = "http://172.19.34.18:3000/cl/login";
    
    @IBOutlet weak var emailC: UITextField!
    @IBOutlet weak var mdpC: UITextField!
    
    @IBAction func LoginBtn(_ sender: UIButton) {
        
        let parameters : Parameters = [
            "email": emailC.text!,
            "password" : mdpC.text!
        ]
        //sending Post Request
        //Sending http post request
        Alamofire.request(URL_USER_LOGIN, method: .post, parameters: parameters).responseJSON
            {
                response in
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                    if response as? String != "Mot de passe errone"
                    {
                        print("succès")
                        
                    }
                    
                    //converting it as NSDictionary
                    // let jsonData = result as! NSDictionary
                    
                    //displaying the message in label
                    //         self.labelMessage.text = jsonData.value(forKey: "message") as! String?
                }
        }
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
    }


}

