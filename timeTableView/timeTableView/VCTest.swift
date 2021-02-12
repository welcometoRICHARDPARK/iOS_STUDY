//
//  VCTest.swift
//  timeTableView
//
//  Created by 박대희 on 2021/01/31.
//

import Foundation
import SnapKit

class VCTest : UIViewController {
    private var containerTableView : UITableView = UITableView()
    private var buttonContainerView : UIView = UIView()
    private var searchLabelContainerView : UIView = UIView()
    
    private var cancleButton : UIButton = UIButton()
    private var directAddButton : UIButton = UIButton()
    private var cancleButtonTitleLabel : UILabel = UILabel()
    private var directAddButtonTitleLabel : UILabel = UILabel()
    private var addButtonImage : UIView = UIView()
    
    private var searchTextFieldContainerView : UIView = UIView()
    private var searchTextField : UITextField = UITextField()
    private var filterTextLabel : UILabel = UILabel()
    private var searchButton : UIButton = UIButton()
    
    
    
    @objc private func onClickSearchButton(_ sender: UIButton){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "firststoryboard") as! timeTableViewController1
        self.navigationController?.pushViewController(nextViewController, animated: true)
        
    }
    
    private func addSubViewsToParentView() {
        self.view.addSubview(buttonContainerView)
        self.view.addSubview(searchLabelContainerView)
        self.view.addSubview(containerTableView)
    }
    
    
    
    private func buttonContainerViewLayout() {
        buttonContainerView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(70) // 나중에 이 부분 조절해서 맞추면 됨
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(40)
        }
        buttonContainerView.addSubview(cancleButton)
        buttonContainerView.addSubview(directAddButton)
        cancleButton.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(16)
            make.centerY.equalToSuperview()
            make.width.equalTo(26)
            make.height.equalTo(20)
        }
        directAddButton.snp.makeConstraints { (make) in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
            make.width.equalTo(70)
            make.height.equalTo(20)
        }
        cancleButton.addSubview(cancleButtonTitleLabel)
        directAddButton.addSubview(directAddButtonTitleLabel)
        directAddButton.addSubview(addButtonImage)
        cancleButtonTitleLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.width.equalTo(26)
            make.height.equalTo(20)
        }
        cancleButtonTitleLabel.text = "취소"
        cancleButtonTitleLabel.textColor = UIColor(red: 22/225, green: 83/225, blue: 139/225, alpha: 1)
        cancleButtonTitleLabel.font = UIFont.systemFont(ofSize: 14)

        directAddButtonTitleLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(52)
            make.height.equalTo(20)
        }
        directAddButtonTitleLabel.text = "직접추가"
        directAddButtonTitleLabel.textColor = UIColor(red: 22/225, green: 83/225, blue: 139/225, alpha: 1)
        directAddButtonTitleLabel.font = UIFont.systemFont(ofSize: 14)
        addButtonImage.snp.makeConstraints { (make) in
            make.leading.equalTo(directAddButtonTitleLabel.snp.trailing).offset(4)
            make.centerY.equalToSuperview()
            make.width.equalTo(14)
            make.height.equalTo(14)
        }
        addButtonImage.backgroundColor = .black
    }
    private func searchLabelContainerLayout() {
        searchLabelContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(buttonContainerView.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(47)
        }
        searchLabelContainerView.addSubview(searchTextFieldContainerView)
        searchTextFieldContainerView.snp.makeConstraints { (make) in
            make.top.equalTo(buttonContainerView.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-48)
            make.height.equalTo(30)
        }
        searchTextFieldContainerView.layer.cornerRadius = 15.0
        searchTextFieldContainerView.clipsToBounds = true
        searchTextFieldContainerView.backgroundColor = UIColor(red: 218/225, green: 218/225, blue: 218/225, alpha: 218/225)

        searchTextFieldContainerView.addSubview(filterTextLabel)
        filterTextLabel.snp.makeConstraints { (make) in
            make.leading.equalToSuperview().offset(13)
            make.centerY.equalToSuperview()
            make.width.equalTo(31)
            make.height.equalTo(18)
        }
        filterTextLabel.text = "필터 :"
        filterTextLabel.textColor = UIColor(red: 22/225, green: 83/225, blue: 139/225, alpha: 1)
        filterTextLabel.font = UIFont.systemFont(ofSize: 12)

        searchTextFieldContainerView.addSubview(searchTextField)
        searchTextField.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.leading.equalTo(filterTextLabel.snp.trailing)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(17)
        }

        searchLabelContainerView.addSubview(searchButton)
        searchButton.snp.makeConstraints { (make) in
            make.leading.equalTo(searchTextFieldContainerView.snp.trailing).offset(6)
            make.centerY.equalTo(searchTextField)
            make.width.equalTo(29)
            make.height.equalTo(30)
        }
        searchButton.layer.cornerRadius = 15.0
        searchButton.clipsToBounds = true
        searchButton.backgroundColor = UIColor(red: 218/225, green: 218/225, blue: 218/225, alpha: 218/225)
        
        
        searchButton.addTarget(self, action:#selector(onClickSearchButton(_:)) , for: .touchUpInside)
    }
    
    private func TableViewContainerLayout() {
        containerTableView.snp.makeConstraints { (make) in
            make.top.equalTo(searchLabelContainerView.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview()
        }
        containerTableView.separatorStyle = .none
    }
    
    private func setConstraints() {
        addSubViewsToParentView()
        buttonContainerViewLayout()
        searchLabelContainerLayout()
        TableViewContainerLayout()
        
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.containerTableView.delegate = self
        self.containerTableView.dataSource = self
        containerTableView.register(CellTest.self, forCellReuseIdentifier: "CellTest")
        setConstraints()
        
    }
}

extension VCTest : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = containerTableView.dequeueReusableCell(withIdentifier: "CellTest", for: indexPath) as? CellTest else {return UITableViewCell()}
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 127
    }
    
    
}
