//
//  ExpandableStackview.swift
//  snapkit_practice
//
//  Created by 박대희 on 2021/01/24.
//

import Foundation
import UIKit
import SnapKit

public class ExpandableStackview : UIViewController {
    private var addRichardView : richardView = richardView()
    private var testView : UIView = UIView()
    

    public override func viewDidLoad() {
        self.view.addSubview(addRichardView)
        addRichardView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(100)
        }
        addRichardView.backgroundColor =  .black

        
    }
    
}

