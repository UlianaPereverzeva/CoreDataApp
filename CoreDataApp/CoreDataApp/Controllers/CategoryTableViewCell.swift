//
//  CategoryTableViewCell.swift
//  CoreDataApp
//
//  Created by ульяна on 10.01.23.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    var name = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func setUpName(name: String) {
        self.name.textColor = .black
        self.name.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        self.name.text = name
        self.contentView.addSubview(self.name)
        self.name.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.name.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 14),
            self.name.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 14),
            self.name.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -4),
            self.name.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -14)
        ])
    }
}
