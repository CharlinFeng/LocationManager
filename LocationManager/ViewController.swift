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
        


        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), {
            
            print("实时定位开始")
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                //直接重新来一次
                LocationManager.getOnceLocation(locaClosure: { (coordinate, errorMsg) -> Void in
                    
                    print("实时定位完成")
                    
                    print("实时定位:\(coordinate),\(errorMsg)")
                    
                    
                    
                    }) { (m, e) -> Void in
                        
                        print("实时反地理编码:\(m?.city)")
                }
            })
            
        });
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if LocationManager.cacheCoordinate_Empty {

            print("无定位")
            
        }else {

            print("有定位")
        }
        
        // 历史
        LocationManager.getCacheLocation(locaClosure: { (coordinate, errorMsg) -> Void in
            
            print("历史定位:\(coordinate),\(errorMsg)")
            
        }) { (m, e) -> Void in
            
            print("历史反地理编码:\(m?.city)")
        }
        
        

        
        
    }


}

