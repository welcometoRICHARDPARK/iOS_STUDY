//
//  CellTest.swift
//  timeTableView
//
//  Created by 박대희 on 2021/02/01.
//

import Foundation
import SnapKit

class CellTest : UITableViewCell {
    private var classNameLabel : UILabel = UILabel()
    private var professorNameLabel : UILabel = UILabel()
    private var classTimeAndPlaceLabel : UILabel = UILabel()
    private var gradeLabel : UILabel = UILabel()
    private var classTypeLabel : UILabel = UILabel()
    private var creditLabel : UILabel = UILabel()
    private var classCodeLabel : UILabel = UILabel()
    private var classTargetLabel : UILabel = UILabel()
    private var quotaLabel : UILabel = UILabel()
    private var addThisClassToTimetableButton : UIButton = UIButton()
    private var addThisClassToTimeTableButtonTitleLabel : UILabel = UILabel()
    
    
    private var star1 : UIImage = UIImage()
    private var star2 : UIImage = UIImage()
    private var star3 : UIImage = UIImage()
    private var star4 : UIImage = UIImage()
    private var star5 : UIImage = UIImage()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        subviewsLayout()
        addClassTableCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func subviewsLayout() {
        self.addSubview(classNameLabel)
        self.addSubview(professorNameLabel)
        self.addSubview(classTimeAndPlaceLabel)
        self.addSubview(gradeLabel)
        self.addSubview(classTypeLabel)
        self.addSubview(creditLabel)
        self.addSubview(classCodeLabel)
        self.addSubview(classTargetLabel)
        self.addSubview(addThisClassToTimetableButton)
        self.addSubview(quotaLabel)
        
    
    }
    private func addClassTableCell() {
        subviewsLayout()
        classNameLabel.snp.makeConstraints { (make) in
            make.width.equalTo(148)
            make.height.equalTo(18)
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(8)
        }
        
        professorNameLabel.snp.makeConstraints { (make) in
            make.width.equalTo(33)
            make.height.equalTo(16)
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(classNameLabel.snp.bottom)
        }
        classTimeAndPlaceLabel.snp.makeConstraints { (make) in
            make.width.equalTo(187)
            make.height.equalTo(15)
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(professorNameLabel.snp.bottom).offset(4)
        }
        gradeLabel.snp.makeConstraints { (make) in
            make.width.equalTo(24)
            make.height.equalTo(15)
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(classTimeAndPlaceLabel.snp.bottom)
        }
        classTypeLabel.snp.makeConstraints { (make) in
            make.width.equalTo(18)
            make.height.equalTo(15)
            make.leading.equalTo(gradeLabel.snp.trailing).offset(35)
            make.centerY.equalTo(gradeLabel)
        }
        creditLabel.snp.makeConstraints { (make) in
            make.width.equalTo(24)
            make.height.equalTo(15)
            make.leading.equalTo(classTypeLabel.snp.trailing).offset(36)
            make.centerY.equalTo(gradeLabel)
        }
        classCodeLabel.snp.makeConstraints { (make) in
            make.width.equalTo(55)
            make.height.equalTo(15)
            make.leading.equalTo(creditLabel.snp.trailing).offset(35)
            make.centerY.equalTo(gradeLabel)
        }
        classTargetLabel.snp.makeConstraints { (make) in
            make.width.equalTo(158)
            make.height.equalTo(15)
            make.leading.equalToSuperview().offset(16)
            make.top.equalTo(classCodeLabel.snp.bottom)
        }
        quotaLabel.snp.makeConstraints { (make) in
            make.width.equalTo(32)
            make.height.equalTo(15)
            make.trailing.equalToSuperview().offset(-16)
            make.leading.equalToSuperview().offset(312)
            make.top.equalToSuperview().offset(27)
        }
        
        addThisClassToTimetableButton.snp.makeConstraints { (make) in
            make.top.equalTo(classTargetLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(71)
            make.height.equalTo(20)
        }
        addThisClassToTimetableButton.layer.cornerRadius = 10.0
        addThisClassToTimetableButton.clipsToBounds = true
        addThisClassToTimetableButton.layer.borderWidth = 0.6
        addThisClassToTimetableButton.layer.borderColor = CGColor(red: 22/225, green: 83/225, blue: 139/225, alpha: 1)
        addThisClassToTimetableButton.addSubview(addThisClassToTimeTableButtonTitleLabel)
        addThisClassToTimeTableButtonTitleLabel.snp.makeConstraints { (make) in
            make.width.equalTo(57)
            make.height.equalTo(15)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        addThisClassToTimeTableButtonTitleLabel.text = "시간표에 추가"
        addThisClassToTimeTableButtonTitleLabel.font = UIFont.systemFont(ofSize: 10)
        addThisClassToTimeTableButtonTitleLabel.textColor = UIColor(red: 22/225, green: 83/225, blue: 219/225, alpha: 1)
        
    }
}
