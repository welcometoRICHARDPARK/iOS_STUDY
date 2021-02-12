//
//  TimeTableView.swift
//  timeTableView
//
//  Created by 박대희 on 2021/01/26.
//

import Foundation
import SnapKit

class timeTableViewController1 : UIViewController{
    private var items : [String] = ["교양선택", "교양필수", "교직", "연계전공", "융합전공", "학부전공별"]
    private var containerTableView : UITableView = UITableView()
    
    private var rightConfirmButton : UIBarButtonItem = UIBarButtonItem(title: "확인", style: .plain, target: self, action: nil)
    private var azulColor = UIColor(red: 22/225, green: 83/225, blue: 219/225, alpha: 1)

    
    private func setConstraints() {
        self.view.addSubview(containerTableView)
        containerTableView.snp.makeConstraints { (make) in
            make.top.equalTo(50)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview()
        }
//        containerTableView.backgroundColor = .blue
    }
    private func navigationBarTitleLayout() {
        self.navigationController?.navigationBar.topItem?.title = "전체"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
    }
    private func navigationBarRightButtonLayout() {
        self.navigationItem.rightBarButtonItem = self.rightConfirmButton
        self.navigationController?.navigationBar.tintColor = azulColor
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.containerTableView.delegate = self
        self.containerTableView.dataSource = self
        containerTableView.register(timeTableViewCell.self, forCellReuseIdentifier: "timeTableViewCell")
        setConstraints()
        navigationBarTitleLayout()
        navigationBarRightButtonLayout()
    }
}

extension timeTableViewController1 : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = containerTableView.dequeueReusableCell(withIdentifier: "timeTableViewCell", for: indexPath) as? timeTableViewCell else { return UITableViewCell() }
        
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .black
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        for i in 0..<items.count{
            if (indexPath.row == i){
                let detailFilterView = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? timeTableViewController2
                self.navigationController?.pushViewController(detailFilterView!, animated: true)
                print("clicked: \(indexPath.row)")
            }
        }
        
}


}
