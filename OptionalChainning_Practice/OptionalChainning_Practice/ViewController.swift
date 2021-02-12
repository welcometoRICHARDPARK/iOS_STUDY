//
//  ViewController.swift
//  OptionalChainning_Practice
//
//  Created by 박대희 on 2021/02/05.
//

import UIKit


class ViewController: UIViewController {
    var text = "This is a swift book for Apple's Programming language"
    var result = ""
    
    func filter() {
        outer :  for i in 1...5 {
            inner : for j in 1...9 {
                if (j==3) {
                    break outer
                }
            }
        }
    }
    public override func viewDidLoad() {
        outer :  for i in 1...5 {
            inner : for j in 1...9 {
                if (j==3) {
                    break outer
                }
            }
        }
    }
    
}

