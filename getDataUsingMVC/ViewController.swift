//
//  ViewController.swift
//  getDataUsingMVC
//
//  Created by chbn on 17/03/20.
//  Copyright © 2020 chbn. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var table_View: UITableView!
    var dataArray : [AnyObject] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        getdata()
    }
    func getdata(){
        dataUsingALamofire.gettingDataUsingAlamofire(baseUrl: "https://jsonplaceholder.typicode.com/", serviceUrl: "users", parameters: [:], encoding: URLEncoding.default) { (response, error) in
            if response.count > 0{
                let tracapi = userDetailsModel.init(convertModel: response )
                self.dataArray = tracapi.arrayAutoDataValues
                self.table_View.reloadData()
            }
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
       }
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table_View.dequeueReusableCell(withIdentifier: "detailTableViewCell", for: indexPath) as! detailTableViewCell
        let items : userDetails = dataArray[indexPath.row] as! userDetails
//        if let addressCity = items.address {
//
//        }
        cell.titleLbl.text = (items.address["city"] as! String)
       // cell.titleLbl.text =  items.address
        cell.subTitleLbl.text = items.email
        return cell
       }
}

