//
//  ViewController.swift
//  LocationManager
//
//  Created by 冯成林 on 16/1/19.
//  Copyright © 2016年 冯成林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        LocationManager.getOnceLocation { (loca, errorMsg) -> Void in
            
            print("定位成功: \(loca),\(errorMsg)")
        }
        
    }


}

