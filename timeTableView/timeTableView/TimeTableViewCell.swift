//
//  TimeTableViewCell.swift
//  timeTableView
//
//  Created by 박대희 on 2021/01/26.
//

import Foundation
import SnapKit

class timeTableViewCell : UITableViewCell {
    
    private var filterNameLabel : UILabel = UILabel()
    private var rightArrowButton : UIButton = UIButton()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        timeTableCellLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func timeTableCellLayout() {
        self.addSubview(filterNameLabel)
        self.addSubview(rightArrowButton)
        
        filterNameLabel.snp.makeConstraints { (make) in
            make.width.equalTo(74)
            make.height.equalTo(24)
            make.leading.equalToSuperview().offset(26)
            make.trailing.equalTo(rightArrowButton).offset(220)
            make.centerY.equalToSuperview()
        }
        rightArrowButton.snp.makeConstraints { (make) in
            make.width.equalTo(24)
            make.height.equalTo(rightArrowButton.snp.width)
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
        }
        rightArrowButton.backgroundColor = .black
        
    }
    
    
    
}

