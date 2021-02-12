//
//  TimeTableViewController3.swift
//  timeTableView
//
//  Created by 박대희 on 2021/01/29.
//

import Foundation
import SnapKit

class timeTableViewController3 : UIViewController {
    private var selectContainerView : UIView = UIView()
    private var lectureTitleButton : UIButton = UIButton()
    private var professorButton : UIButton = UIButton()
    private var lectureCodeButton : UIButton = UIButton()
    private var placeButton : UIButton = UIButton()
    
    private var lectureTitleButtonImageView : UIImageView = UIImageView()
    private var lectureTitleButtonLabel : UILabel = UILabel()
    
    private var professorButtonImageView : UIImageView = UIImageView()
    private var professorButtonLabel : UILabel = UILabel()
    
    private var lectureCodeButtonImageView : UIImageView = UIImageView()
    private var lectureCodeButtonLabel : UILabel = UILabel()
    
    private var placeButtonImageView : UIImageView = UIImageView()
    private var placeButtonLabel : UILabel = UILabel()
    
    public override func viewDidLoad() {
        selectSearchTypeViewLayout()
    }
    
    private func addSelectOption() {
        selectContainerView.addSubview(lectureTitleButton)
        lectureTitleButton.addSubview(lectureTitleButtonImageView)
        lectureTitleButton.addSubview(lectureTitleButtonLabel)
        
        selectContainerView.addSubview(professorButton)
        professorButton.addSubview(professorButtonImageView)
        professorButton.addSubview(professorButtonLabel)
        
        selectContainerView.addSubview(lectureCodeButton)
        lectureCodeButton.addSubview(lectureCodeButtonImageView)
        lectureCodeButton.addSubview(lectureCodeButtonLabel)
        
        selectContainerView.addSubview(placeButton)
        placeButton.addSubview(placeButtonImageView)
        placeButton.addSubview(placeButtonLabel)
    }
    private func selectSearchTypeViewLayout() {
        self.view.addSubview(selectContainerView)
        addSelectOption()
        
        selectContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(50)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(30)
        }
        selectContainerView.backgroundColor = .yellow
        
        
        
        lectureTitleButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(26)
            make.width.equalTo(51)
            make.height.equalTo(18)
        }
        lectureTitleButtonImageView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(12.5)
            make.width.equalTo(12.5)
        }
        lectureTitleButtonLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(lectureTitleButtonImageView.snp.trailing).offset(5.5)
            make.top.equalToSuperview().offset(3)
            make.bottom.equalToSuperview().offset(-2.5)
            make.height.equalTo(12.5)
            make.width.equalTo(33)
        }
        lectureTitleButtonLabel.text = "과목명"
        lectureTitleButtonLabel.font = UIFont.systemFont(ofSize: 12)
        lectureTitleButtonImageView.backgroundColor = .black

        
        
        
        professorButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(lectureTitleButton.snp.trailing).offset(16)
            make.width.equalTo(51)
            make.height.equalTo(18)
        }
        professorButtonImageView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(12.5)
            make.width.equalTo(12.5)
        }
        professorButtonLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(professorButtonImageView.snp.trailing).offset(5.5)
            make.top.equalToSuperview().offset(3)
            make.bottom.equalToSuperview().offset(-2.5)
            make.height.equalTo(12.5)
            make.width.equalTo(33)
        }
        professorButtonLabel.text = "교수명"
        professorButtonLabel.font = UIFont.systemFont(ofSize: 12)
        professorButtonImageView.backgroundColor = .black
        
        
        
        lectureCodeButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(professorButton.snp.trailing).offset(16)
            make.width.equalTo(62)
            make.height.equalTo(18)
        }
        lectureCodeButtonImageView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(12.5)
            make.width.equalTo(12.5)
        }
        lectureCodeButtonLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(lectureCodeButtonImageView.snp.trailing).offset(5.5)
            make.top.equalToSuperview().offset(3)
            make.bottom.equalToSuperview().offset(-2.5)
            make.height.equalTo(12.5)
            make.width.equalTo(44)
        }
        lectureCodeButtonLabel.text = "과목코드"
        lectureCodeButtonLabel.font = UIFont.systemFont(ofSize: 12)
        lectureCodeButtonImageView.backgroundColor = .black
        
        
        
        placeButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(lectureCodeButton.snp.trailing).offset(16)
            make.width.equalTo(51)
            make.height.equalTo(18)
        }
        placeButtonImageView.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(12.5)
            make.width.equalTo(12.5)
        }
        placeButtonLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(placeButtonImageView.snp.trailing).offset(5.5)
            make.top.equalToSuperview().offset(3)
            make.bottom.equalToSuperview().offset(-2.5)
            make.height.equalTo(12.5)
            make.width.equalTo(33)
        }
        placeButtonLabel.text = "장소"
        placeButtonLabel.font = UIFont.systemFont(ofSize: 12)
        placeButtonImageView.backgroundColor = .black
        
        
    }
}
