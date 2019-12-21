//
//  MyTabbar.swift
//  XZ_JRTT
//
//  Created by 曹笑竹 on 2019/12/21.
//  Copyright © 2019 beyondSoft. All rights reserved.
//

import UIKit

class MyTabbar: UITabBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(publishButton)
    }
    
//    private  绝对私有
//    fileprivate 本类可以使用
    private lazy var publishButton: UIButton = {
        let publishButton = UIButton(type: .custom)
        publishButton.setBackgroundImage(UIImage(named: "feed_publish_44x44_"), for: .normal)
        publishButton.setBackgroundImage(UIImage(named: "feed_publish_press_44x44_"), for: .selected)
        publishButton.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 60, height: 60))
        return publishButton
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    初始化frame方法
    override func layoutSubviews() {
        super.layoutSubviews()
//        当前tabbar的宽度和高度
        let width = frame.width
        let height:CGFloat = 49.0
        
        publishButton.center = CGPoint(x: width * 0.5, y: height * 0.5 - 7)
        let buttonW = width * 0.2
        let buttonH = height
        let buttonY:CGFloat = 0
        
        var index = 0
        for button in subviews {
            if !button.isKind(of: NSClassFromString("UITabBarButton")!){continue}
            let buttonX = buttonW * CGFloat((index > 1 ? (index+1) : index))
            button.frame = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
            index += 1
        }
    }
}
