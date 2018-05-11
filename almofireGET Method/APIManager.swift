//
//  APIManager.swift
//  almofireGET Method
//
//  Created by nikhil boriwale on 1/16/18.
//  Copyright © 2018 nikhilboriwale. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class APIManager
{
    /// Crete single Object oF API manager Class & use this in every where   SINGLETONE OBJECT CREATION////
    static let sharedInstance =  APIManager()
   // by using private declaration singleton object create
    private init()
    {
        
    }
    
    func getUsersFromUrl(OnCompletion:@escaping (JSON)-> Void){
   
        
        let myURL =  NSURL(string:FETCH_USER_URL)
        var request = URLRequest(url:myURL! as URL)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        Alamofire.request(request as! URLRequestConvertible).responseJSON
            { response in
                switch response.result{
                case .success(let data):
                    print("Successfully response",data)
                    //Get all Json Response data into MyResponse Key
                    let response = JSON(data)
                    OnCompletion(response)

                case .failure(let error):
                    print("Request failed with error \(error)")
                    OnCompletion(nil)
                }
        }
       
    }
}
