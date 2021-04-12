//
//  ViewCollectionViewCell.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 11.04.2021.
//

import UIKit

class ViewCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var source: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var time: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
