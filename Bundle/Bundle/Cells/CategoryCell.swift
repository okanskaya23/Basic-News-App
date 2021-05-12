//
//  CategoryCell.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//


import UIKit

class CategoryCell: UICollectionViewCell{

    @IBOutlet weak private var CategoryName: UILabel!
    func setTittle(with CategoryVar: String){
        CategoryName.text = CategoryVar;
    }
    
    
    @IBOutlet weak private var ımage_c: UIImageView!
    func setImg(with ImgVar: UIImage){
        ımage_c.image =  ImgVar;
    }
    
    
    override func awakeFromNib(){
        super.awakeFromNib()
        // Initialization code
    }
    
    
}

