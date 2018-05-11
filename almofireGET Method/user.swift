// create user model class to store all value
//1. declare variable

import Foundation
import SwiftyJSON
class user{
    var name = String()
    var username = String()
    var emial  = String()
    var phone = String()
    var myaddress = userAddress(addressJson: ["address"])
    var mycompany = usercompany(companyJson:["company"])
  
    
    //2. init using swift json to store value from response Key Like this
    init(userJson:JSON) {
        self.name = userJson["name"].stringValue
        self.username = userJson["username"].stringValue
        self.emial = userJson["email"].stringValue
        self.phone = userJson["phone"].stringValue
        self.myaddress = userAddress(addressJson:userJson["address"])
        self.mycompany = usercompany(companyJson:userJson ["company"])
    }
    
}
//create  seperate for address JSON array
class userAddress{
    var street = String()
    var suite = String()
    var city = String()
    
    init(addressJson:JSON) {
        self.street = addressJson["street"].stringValue
        
        self.suite = addressJson["suite"].stringValue
        self.city = addressJson["city"].stringValue
    }
    
}
//create  seperate for Company JSON array
class  usercompany {
    var companyname = String()
    var phrase = String()
    init(companyJson:JSON) {
        self.companyname = companyJson["name"].stringValue
        self.phrase = companyJson["catchPhrase"].stringValue
       
    }
    
}
