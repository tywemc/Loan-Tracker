//
//  ViewController.swift
//  Loan Tracker
//
//  Created by Tyler McAnally on 2/25/20.
//  Copyright © 2020 TyWeMc. All rights reserved.
//

import UIKit

var federal = LoanGroup(type: "Federal")
var sallieMae = LoanGroup(type: "Sallie Mae")
var car = LoanGroup(type: "Car")
var loanGroups = [federal, sallieMae, car]
var selectionIndex = 0

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    var federal: LoanGroup
//    var sallieMae: LoanGroup
//    var car: LoanGroup
//    let loanGroups: [LoanGroup] = []
    
    
    
    
    let loanTableView: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = UIColor.white
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.separatorColor = UIColor.white
        return tv
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        // Opens Safari to nelnet.com
        if let url = URL(string: "https://www.nelnet.com") {
            UIApplication.shared.open(url)
        }
    }
    
    func setupTableView() {
        loanTableView.delegate = self
        loanTableView.dataSource = self
        
        loanTableView.register(LoanTableViewCell.self, forCellReuseIdentifier: "cellID")
        
        view.addSubview(loanTableView)
        
        NSLayoutConstraint.activate ([
            loanTableView.topAnchor.constraint(equalTo: self.view.topAnchor),
            loanTableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            loanTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            loanTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
        ])
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = loanTableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! LoanTableViewCell
        cell.backgroundColor = UIColor.white
        print(loanGroups)
        cell.loanLabel.text = "\(loanGroups[indexPath.row].type)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

