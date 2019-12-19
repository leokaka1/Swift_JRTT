//
//  MyTabBarController.swift
//  XZ_JRTT
//
//  Created by 曹笑竹 on 2019/12/19.
//  Copyright © 2019 beyondSoft. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func setChild(_ childController: UIViewController,title: String , imageName: String, selectImageName : String) {
        
//        设置了tabbarItem的属性
        childController.tabBarItem.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectImageName)
//        设置导航控制器为自控制器的根导航控件
        let navi = MyNavigartionController(rootViewController: childController)
        addChild(navi)
    }
}
