//
//  MyTabBarController.swift
//  XZ_JRTT
//
//  Created by 曹笑竹 on 2019/12/19.
//  Copyright © 2019 beyondSoft. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(tabBar.subviews)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        改变tabbar字体的颜色
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = UIColor(red: 245/255.0, green: 90/255.0, blue: 93/255.0, alpha: 1.0)
        addChildViewController()
    }
    
    func addChildViewController(){
        setChild(HomeViewController(), title: "首页", imageName: "home_tabbar_32x32_", selectImageName: "home_tabbar_press_32x32_")
        setChild(VideoViewController(), title: "视频", imageName: "video_tabbar_32x32_", selectImageName: "video_tabbar_press_32x32_")
        setChild(HuoshanViewController(), title: "小视频", imageName: "huoshan_tabbar_32x32_", selectImageName: "huoshan_tabbar_press_32x32_")
        setChild(MineViewController(), title: "我的", imageName: "mine_tabbar_32x32_", selectImageName: "mine_tabbar_press_32x32_")
        
//        kvc设置tabbar不然tabbar是只读属性
        setValue(MyTabbar(), forKey: "tabBar")
    }
    
    func setChild(_ childController: UIViewController,title: String , imageName: String, selectImageName : String) {
        
//        设置了tabbarItem的属性
        childController.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectImageName)
//        设置导航控制器为自控制器的根导航控件
        let navi = MyNavigartionController(rootViewController: childController)
        addChild(navi)
    }
}
