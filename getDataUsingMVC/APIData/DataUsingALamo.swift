//
//  DataUsingALamo.swift
//  getDataUsingMVC
//
//  Created by chbn on 18/03/20.
//  Copyright © 2020 chbn. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
typealias JsonDictionary = [String : Any]
enum servieResponse {
    case success (response : JsonDictionary)
    case failure
    case notConnectedToInternet
}
enum ResponseStatusCode: Int {
    case success = 200
}
class dataUsingALamofire {
    static let shared = dataUsingALamofire()
    var dataRequestArray : [DataRequest] = []
    var sessionManager : [String : Alamofire.SessionManager] = [:]
   class func gettingDataUsingAlamofire(baseUrl : String , serviceUrl : String , parameters : NSDictionary, encoding : ParameterEncoding, completionHandler : @escaping (_ response :AnyObject ,_ error : String)->Void){
    Alamofire.request(baseUrl+serviceUrl, method: .get, parameters: parameters as? Parameters, encoding: URLEncoding.default, headers: nil).responseJSON { (response : DataResponse<Any> ) in
             switch(response.result) {
                           case .success(_):
                               if response.result.value != nil{
                            if response.result.value != nil{ completionHandler(response.result.value as AnyObject, "")
                                               }
                               }
                               break
                           case .failure(_):
                               let temp:[AnyObject] = []
                           completionHandler(temp as AnyObject, (response.result.error?.localizedDescription)!)
                               break
                           }
        }
    }
}
