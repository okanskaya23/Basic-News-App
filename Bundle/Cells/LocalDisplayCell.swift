//
//  LocalDisplayCell.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 17.06.2021.
//

import Foundation
import UIKit

class LocalDisplay: UICollectionViewCell {


    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var NewsImg: UIImageView!
    func setImg(with ImgVar: URL){
        NewsImg.load(url: ImgVar)
        
    }
    @IBOutlet weak var new: UITextView!
    func setSubTittle(with newDes: String){
        new.text = newDes;
    }

    @IBOutlet weak var tittle: UILabel!
    func setTittle(with NewsTittleVar: String){
        tittle.text = NewsTittleVar;
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
