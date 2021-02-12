//
//  TimeTableViewController2.swift
//  timeTableView
//
//  Created by 박대희 on 2021/01/27.
//

import Foundation
import SnapKit

class timeTableViewController2 : UIViewController{
    private let containerTableView :  UITableView = UITableView()
    private var items : [String] = ["'15이전", "'16~'18", "'19이후", "기독교과목"]
    private var item : timeTableFilterData = timeTableFilterData()
    private func setConstraints() {
        self.view.addSubview(containerTableView)
        containerTableView.snp.makeConstraints { (make) in
            make.top.equalTo(50)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalToSuperview()
        }
    }
    private func navigationBarTitleLayout() {
//        self.navigationController?.navigationBar.topItem?.title =
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        self.containerTableView.delegate = self
        self.containerTableView.dataSource = self
        
        containerTableView.register(timeTableViewCell.self, forCellReuseIdentifier: "timeTableViewCell")
        setConstraints()

    }
    
}
extension timeTableViewController2 : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = containerTableView.dequeueReusableCell(withIdentifier: "timeTableViewCell", for: indexPath) as? timeTableViewCell else { return UITableViewCell() }
        
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .black
        
        return cell
    }
    
    
}
