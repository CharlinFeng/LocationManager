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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        
        // 历史
        LocationManager.getOnceLocation { (coordinate, errorMsg) -> Void in
            
            LocationManager.getOnceReverseGeocode(coordinate: coordinate) { (m, s) in
                print(m?.street)
                print(s)
            }
        }


        
        

        
        
    }


}

