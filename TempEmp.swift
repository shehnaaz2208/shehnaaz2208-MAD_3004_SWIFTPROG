//
//  TempEmp.swift
//  Day 7
//
//  Created by MacStudent on 2018-07-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class TempEmp: Employee, INetPay{
    var hours: Int?
    var netPay: Double?{
        get{
            if self.hours! > 20 {
                return self.basicPay! - 1500
            }else{
                return self.basicPay!
            }
        }
    }
    
    override init() {
        self.hours = 0
        super.init()
    }
    required init(empID: Int, empName: String, basicPay: Double, holiday: Int) {
        self.hours = holiday
        super.init(empID: empID, empName: empName, basicPay: basicPay)
        self.hours = holiday
    }
    
    override func display() {
        super.display()
        print("Holiday hours : \(self.hours ?? 0)")
        print("Net Pay : \(self.netPay ?? self.basicPay ?? 0.0)")
    }
    
}
