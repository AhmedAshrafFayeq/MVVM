//
//  CustomTableViewCell.swift
//  PeopleData
//
//  Created by Ahmed Fayeq on 27/01/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    static let cellIdentifier = "CustomTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }

    func configure(viewModel: CellViewModel){
        nameLabel.text = "\(viewModel.firstName) \(viewModel.lastName)"
        heightLabel.text = String(viewModel.height)
    }
}
