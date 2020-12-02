//
//  RegisterController.swift
//  Troca
//
//  Created by ESPRIT on 30/11/2020.
//  Copyright © 2020 Esprit. All rights reserved.
//

import UIKit
import Alamofire

class RegisterController: UIViewController {
    
    //var
    let URL_USER_REGISTER = "http://172.19.34.18:3000/cl/inscription";
    
    @IBOutlet weak var nomClient: UITextField!
    @IBOutlet weak var emailClient: UITextField!
    @IBOutlet weak var mdpClient: UITextField!
    @IBOutlet weak var confirm: UITextField!
    @IBOutlet weak var TelClient: UITextField!
    @IBOutlet weak var DateNClient: UITextField!
    @IBOutlet weak var numCinClient: UITextField!
    @IBOutlet weak var CinClient: UITextField!
    @IBOutlet weak var adresseClient: UITextField!
    @IBOutlet weak var RoleClient: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    
    @IBAction func RegisterButton(_ sender: UIButton) {
        let parameters : Parameters = [
            "password": mdpClient.text!,
            "name" : nomClient.text!,
            "email" : emailClient.text!,
            "tel" : TelClient.text!,
            "dateN" : confirm.text!,
            "numCIN" : numCinClient.text!,
            "cin" : CinClient.text!,
            "adresse" : adresseClient.text!,
            "role" : RoleClient.text!
        ]
        //sending Post Request
        //Sending http post request
        Alamofire.request(URL_USER_REGISTER, method: .post, parameters: parameters).responseJSON
            {
                response in
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                    
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
