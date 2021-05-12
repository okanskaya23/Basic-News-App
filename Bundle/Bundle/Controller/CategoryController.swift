//
//  CategoryPageController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//

import Foundation
import UIKit

class CategoryController: UICollectionViewController, UISearchBarDelegate {
    

    enum Category: String, CaseIterable {
        typealias RawValue = String;

        case n1 = "Business";
        case n2 = "Technology";
        case n3 = "Entertainment";
        case n4 = "General";
        case n5 = "Health";
        case n6 = "Science" ;
        case n7 = "Sports";
    }


    let category = ["Business", "Technology", "Entertainment", "General", "Health","Science", "Sports"]
    let category_ımgs: [UIImage] =
    [
        UIImage(named: "business")!,
        UIImage(named: "Tech")!,
        UIImage(named: "Ent")!,
        UIImage(named: "General")!,
        UIImage(named: "Health")!,
        UIImage(named: "Science")!,
        UIImage(named: "Sport")!,
        
    ]
    
    
    override func viewDidLoad() {
        print("The view did load")
        super.viewDidLoad()
        DispatchQueue.main.async{
            self.collectionView.reloadData()
        }
        collectionView.register(UINib(nibName: "CategoryCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCell");
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "category_to_list", sender: "category="+category[indexPath.row])
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.category.count
    }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
            return 1;
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        guard
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell
        else
        {
            fatalError("????")
        }
        cell.setTittle(with: category[indexPath.row])
        cell.setImg(with: category_ımgs[indexPath.row])
        //cell.ımage_c.image = category_ımgs[indexPath.row]
        return cell
    }

}
extension CategoryController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segue object: \(String(describing: segue))")
        print("sender: \(String(describing: sender))")
        if let destinationVC = segue.destination as? NewsPageController {
            if let item = sender as? String  {
                destinationVC.newsURL = item
            }
        }
    }
}
