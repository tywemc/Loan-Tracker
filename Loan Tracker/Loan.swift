//
//  Loan.swift
//  Loan Tracker
//
//  Created by Tyler McAnally on 2/26/20.
//  Copyright © 2020 TyWeMc. All rights reserved.
//

import Foundation

class Loan {
    
    var type: String
    var balance: Double
    var interest: Double
    var dueDate: Date
    
    init(type: String, bal: Double, apr: Double, due: Date) {
        self.type = type
        self.balance = bal
        self.interest = apr
        self.dueDate = due
    }
}
