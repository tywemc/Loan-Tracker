//
//  LoanTableViewCell.swift
//  Loan Tracker
//
//  Created by Tyler McAnally on 2/27/20.
//  Copyright © 2020 TyWeMc. All rights reserved.
//

import UIKit

class LoanTableViewCell: UITableViewCell {

    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    let loanLabel: UILabel = {
        let label = UILabel()
        label.text = "Loan 1"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        } ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        setupView()
        
        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(cellView)
        cellView.addSubview(loanLabel)
        self.selectionStyle = .none
        
        NSLayoutConstraint.activate ([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            cellView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            cellView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        loanLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        loanLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        loanLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor).isActive = true
        loanLabel.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 20).isActive = true
    }

}
