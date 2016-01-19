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
        //直接重新来一次
        LocationManager.getOnceLocation(locaClosure: { (coordinate, errorMsg) -> Void in
            
                        print("实时定位:\(coordinate),\(errorMsg)")
            
            
            
            }) { (m, e) -> Void in
                
                            print("实时反地理编码:\(m?.city)")
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        // 历史
        LocationManager.getLatestLocation(locaClosure: { (coordinate, errorMsg) -> Void in
            
            print("历史定位:\(coordinate),\(errorMsg)")
            
        }) { (m, e) -> Void in
            
            print("历史反地理编码:\(m?.city)")
        }
        
        

        
        
    }


}

