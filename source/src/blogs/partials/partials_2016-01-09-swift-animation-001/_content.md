# Swift Animation

#### 1. สร้างโปรเจ็คใหม่
##### 2. ลาก UIView เข้ามาในโปรเจ็ค พร้อมกำหนด custom class

ให้ลบ `import Foundation` ออกแล้ว เขียนโค้ดใหม่ลงไป
<pre class="prettyprint linenums">
//
//  MyCustomView.swift
//  Swift Animation
//
//  Created by Macbook Air on 1/11/2559 BE.
//  Copyright © 2559 Code-Aholic. All rights reserved.
//

import UIKit

class MyCustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder:NSCoder) {
        super.init(coder: aDecoder)
        defaultInit()
    }
    
    func defaultInit() {
        self.backgroundColor = UIColor.blueColor()
    }
    
}
</pre>

หลังจากนั้นให้กำหนด Class ให้กับ UIView เป็น `MyCustomView`