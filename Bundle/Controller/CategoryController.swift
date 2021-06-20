//
//  CategoryPageController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//

import Foundation
import UIKit

class CategoryController: UICollectionViewController, UISearchBarDelegate, MyDataSendingDelegate {
    var lng: String = "tr"
    var VM = CaegoryViewModel()
    @IBOutlet weak var receivedDataLabel: UITextField!
    

    
    override func viewDidLoad() {
        print("The view did load")
        super.viewDidLoad()
        
        DispatchQueue.main.async
        {
            self.collectionView.reloadData()
        }
        collectionView.register(UINib(nibName: "CategoryCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCell");
    }
    func sendDataToFirstViewController(myData: String, selectedLng: String) {
        self.receivedDataLabel.text = "Welcome " + myData
        self.lng = selectedLng
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "category_to_list", sender: "category="+VM.category[indexPath.row])
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.VM.category.count
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
            return 1;
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell else{fatalError("????")}
        cell.setTittle(with: VM.category[indexPath.row])
        cell.ımage_c.image = VM.category_ımgs[indexPath.row]
        return cell
    }
    

}
extension CategoryController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "protocolData" {
            let secondVC: ProfileController = segue.destination as! ProfileController
            secondVC.delegate = self
        }
        else{
            print("segue object: \(String(describing: segue))")
            print("sender: \(String(describing: sender))")
            if let destinationVC = segue.destination as? NewsPageController {
                if let item = sender as? String  {
                    destinationVC.categoryName = item
                    destinationVC.lng = lng 
                }
            }
        }
    }
}


