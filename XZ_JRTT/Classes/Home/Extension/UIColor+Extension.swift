//
//  UIColor+Extension.swift
//  XZ_JRTT
//
//  Created by 曹笑竹 on 2019/12/21.
//  Copyright © 2019 beyondSoft. All rights reserved.
//

import UIKit

extension UIColor{
//    遍历构造方法添加了全局颜色
    convenience init(r:CGFloat,g:CGFloat,b:CGFloat,alpha:CGFloat = 1.0) {
        self.init(displayP3Red: r / 255, green: g / 255, blue: b/255, alpha: alpha)
    }
    
//    全局背景颜色
    class func globalBackgroundColor() -> UIColor {
        return UIColor(r: 249, g: 248, b: 247)
    }
}

