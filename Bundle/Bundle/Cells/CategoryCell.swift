//
//  CategoryCell.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//


import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var CategoryName: UILabel!
    
    func setTittle(with CategoryVar: String){
        CategoryName.text = CategoryVar;
        
    }
    @IBOutlet weak var ımage_c: UIImageView!
    func setImg(with ImgVar: String){
        ımage_c.load(url: URL(string: ImgVar)!)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
