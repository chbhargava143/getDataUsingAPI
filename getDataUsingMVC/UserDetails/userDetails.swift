//
//  userDetails.swift
//  getDataUsingMVC
//
//  Created by chbn on 17/03/20.
//  Copyright © 2020 chbn. All rights reserved.
//

import Foundation
import SwiftyJSON
class userDetailsModel : NSObject {
    var arrayAutoDataValues: [AnyObject] = []
    public init(convertModel jsonObject : AnyObject){
        super.init()
        for item in jsonObject as! NSArray{
            let autoDataValuesModel = userDetails(convertModel : item as! [String : AnyObject])
            self.arrayAutoDataValues.append(autoDataValuesModel)
        }
    }
}
public class userDetails : NSObject{
var name : String?
var username : String?
var email : String?
var website: String?
var phone : String?
var address : [String : Any]
   init(convertModel jsonObject : [String : Any]) {
   
        self.name = jsonObject["name"] as? String ?? ""
    self.email = jsonObject["email"] as? String ?? ""
    self.phone = jsonObject["phone"] as? String ?? ""
    self.website = jsonObject["website"] as? String ?? ""
    self.username = jsonObject["username"] as? String ?? ""
    self.address = jsonObject["address"] as! [String : Any]
}
}
