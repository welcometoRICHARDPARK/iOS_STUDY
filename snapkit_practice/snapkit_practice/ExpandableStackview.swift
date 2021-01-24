//
//  ExpandableStackview.swift
//  snapkit_practice
//
//  Created by 박대희 on 2021/01/24.
//

import Foundation
import UIKit
import SnapKit

public class ExpandableStackview : ViewController {
    
    let a = ViewController()
    let testView : UIView = UIView()
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
//        addTopViewController()
        
//        self.view.addSubview(testView)
//        testView.snp.makeConstraints { (make) in
//            make.width.equalTo(100)
//            make.height.equalTo(testView.snp.width)
//            make.centerY.equalToSuperview()
//        }
//        testView.backgroundColor = .blue
        
    }
    private func addTopViewController() {
        addChild(a)
        a.didMove(toParent: parent)
        self.view.addSubview(a.view)
    }
}

