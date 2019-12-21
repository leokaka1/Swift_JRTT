//
//  UIColor+Extension.swift
//  XZ_JRTT
//
//  Created by 曹笑竹 on 2019/12/21.
//  Copyright © 2019 beyondSoft. All rights reserved.
//

import UIKit

extension UIColor{
    convenience init(r:CGFloat,g:CGFloat,b:CGFloat,alpha:CGFloat = 1.0) {
        self.init(displayP3Red: r / 255, green: g / 255, blue: b/255, alpha: alpha)
    }
}

