//
//  ViewController.swift
//  snapkit_practice
//
//  Created by 박대희 on 2021/01/23.
//

import UIKit
import Foundation
import SnapKit


public class richardView: UIView {
    private let arrowDownImage = UIImage(named: "ic_down_line_gray@2x.png")
    private let arrowUpImage = UIImage(named: "ic_up_line_gray@2x.png")
    
    
    private var todayContainerStackView : UIStackView = UIStackView()
    private var todayTopContainerView : UIView = UIView()
    var todayRankStackView : UIStackView = UIStackView()
    private var flipButton : UIButton = UIButton()
    
    private var todaySearchWordLabel : UILabel = UILabel()
    
    var height : Int = 0
    init(){
        super.init(frame: .zero)
        self.addSubview(todayContainerStackView)
        setTopContainerViewLayout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var isShowRankingView: Bool = false {
        didSet {
            flipButton.setImage(isShowRankingView ? arrowUpImage : arrowDownImage, for: .normal)
            todayRankStackView.isHidden = !isShowRankingView
        }
    }
    
    @objc private func onClickFlipButton(_ sender: UIButton) {
        isShowRankingView = !isShowRankingView
        
    }
    

    public func setTopContainerViewLayout() {
        
        todayContainerStackView.snp.makeConstraints { (make) in
//            make.edges.equalToSuperview()
            make.width.equalTo(360)
//            make.centerY.equalToSuperview()
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        todayContainerStackView.axis = .vertical
        todayContainerStackView.spacing = 8
        todayContainerStackView.addArrangedSubview(todayTopContainerView)
        todayContainerStackView.addArrangedSubview(todayRankStackView)
        todayContainerStackView.backgroundColor = .red
    
        
        todayTopContainerView.snp.makeConstraints { (make) in
            make.height.equalTo(20)
            make.left.right.equalToSuperview()
        }
        todayTopContainerView.backgroundColor = .black
        
        todayRankStackView.snp.makeConstraints { (make) in
            make.height.equalTo(100)
            make.left.right.equalToSuperview()
        }
        todayRankStackView.backgroundColor = .blue
        todayRankStackView.isHidden = !isShowRankingView
        
        todayTopContainerView.addSubview(todaySearchWordLabel)
        todaySearchWordLabel.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.width.equalTo(62)
            make.height.equalTo(18)
        }
        todaySearchWordLabel.backgroundColor = .yellow
        todaySearchWordLabel.text = "오늘의 키워드"
        todaySearchWordLabel.font = .systemFont(ofSize: 11)
        todaySearchWordLabel.textColor = UIColor.blue
        todaySearchWordLabel.layer.cornerRadius = 5
        todaySearchWordLabel.layer.masksToBounds = true
        
        todayTopContainerView.addSubview(flipButton)
        flipButton.snp.makeConstraints { (make) in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-12)
            make.height.equalTo(13)
            make.width.equalTo(13)
        }
        flipButton.backgroundColor = .white
        flipButton.setImage(isShowRankingView ? arrowUpImage : arrowDownImage, for: .normal)
        flipButton.addTarget(self, action: #selector(onClickFlipButton(_:)), for: .touchUpInside)
       
    }
    


}

