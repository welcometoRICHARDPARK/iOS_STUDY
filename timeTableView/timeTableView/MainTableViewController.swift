//
//  MainTableViewController.swift
//  timeTableView
//
//  Created by 박대희 on 2021/02/03.
//

import Foundation
import Alamofire

//class MainTableViewController: ViewController {
//    let urlString = "https://api.androidhive.info/contacts/"
//    var dataSource: [Contact] = []
//    
//    private func fetchData() {
//        AF.request(urlString).responseJSON { (response) in
//            switch response.result {
//            case .success(let res):
//                do {
//                    let jsonData = try JSONSerialization.data(withJSONObject: res, options: .prettyPrinted)
//                    let json = try JSONDecoder().decode(APIResponse.self, from: jsonData)
//                    self.dataSource = json.contacts
//                    
//                } catch(let err) {
//                    print(err.localizedDescription)
//                }
//            case .failure(let err):
//                print(err.localizedDescription)
//            }
//        }
//    }
//}
