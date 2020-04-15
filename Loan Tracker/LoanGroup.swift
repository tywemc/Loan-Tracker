//
//  LoanGroup.swift
//  Loan Tracker
//
//  Created by Tyler McAnally on 2/26/20.
//  Copyright © 2020 TyWeMc. All rights reserved.
//

import Foundation

class LoanGroup {

    var type: String
    var loans: [String: Loan]?
    
    init(type: String) {
        self.type = type
    }
    
    init(type: String,  loans: [Loan]) {
        self.type = type
    }
    
    func addLoan(id: String, loan: Loan){
        self.loans?[id] = loan
    }
    
    

}
