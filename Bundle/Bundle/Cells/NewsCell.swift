//
//  NewsCell.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//

import UIKit

class NewsCell: UICollectionViewCell{

    @IBOutlet weak private var NewsTittle: UILabel!
    func setTittle(with NewsTittleVar: String){
        NewsTittle.text = NewsTittleVar;
    }
    
    
    @IBOutlet weak private var NewsDescription: UILabel!
    func setSubTittle(with NewsSubTittleVar: String){
        NewsDescription.text = NewsSubTittleVar;
    }
    
    @IBOutlet weak private var NewsImg: UIImageView!
    func setImg(with ImgVar: URL){
        NewsImg.load(url: ImgVar)
    }
    
    
    override func awakeFromNib(){
        super.awakeFromNib()
        // Initialization code
    }

}
