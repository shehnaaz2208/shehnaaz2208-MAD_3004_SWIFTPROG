//
//  PermanentEmp.swift
//  Day 7
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//inheriting employee class
 class PermanentEmp : Employee,INetPay {
    var weeks : Int?
    
    //get only computed property
    var netPay : Double?{
        get{
             if self.weeks! > 3 {
                  return self.basicPay! - 100
             }else{
                  return self.basicPay!
                     }
            }
    
    }
    
    override init(){
        self.weeks = 0
        super.init()
    }
    
    required init(empID: Int, empName: String, basicPay: Double, holiday: Int){
        self.weeks = holiday
        super.init(empID: empID, empName: empName, basicPay: basicPay)
    }
    
    override func display(){
        super.display()
        print("weeks : \(self.weeks ?? 0)")
        print("net pay : \(self.netPay?.asCurrency ?? self.basicPay?.asCurrency ?? 0.0.asCurrency)")
    }
    
}
