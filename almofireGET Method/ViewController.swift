//
//  ViewController.swift
//  almofireGET Method
//
//  Created by Nikhil Boriwale on 19/12/17.
//  Copyright © 2017 nikhilboriwale. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {
    
    @IBOutlet weak var myTable: usertable!
    // declare this myResponse keyword to store Success data get
    var  myResponse : JSON = nil
    // handling Multiple user data then store in array
    var users : [user] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchUser()
        
    }
    
    func fetchUser()
    {
   
        // BY  USing this line we create completion handler 
      // {(isFetched) -> Void in
        //}
        
        //Accessing any function with singletone class using this line
        APIManager.sharedInstance.getUsersFromUrl(){(userJson) -> Void in
           if userJson != nil
           {
            self.myResponse = userJson
                                // get particular elimate value from server use for loop
                                for i in 0..<self.myResponse.count{
            
                                    let singleuser = user(userJson:self.myResponse[i])
                                    //append all user data in "users" array
                                    self.users.append(singleuser)
            
                                }
            DispatchQueue.main.async {
                self.myTable.datasourceArray = self.users
                 
            }
                
            
            
            
        }
    }
    }

   
}


