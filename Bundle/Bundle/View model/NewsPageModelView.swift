//
//  NewsPageModelView.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 15.06.2021.


import Foundation
import UIKit

import Foundation
import RxCocoa
import RxSwift



class NewBundle {
    private var newitems: [New] = []
    var Count: Int = 0

}
extension NewBundle {
    convenience init(_ newArticles: [New], count: Int) {
        self.init()
        newitems.append(contentsOf: newArticles)
        self.Count = count
    }
    var noOfSections: Int {
        return 1
    }
    func newnum(_ section: Int) -> Int {
        return self.newitems.count
    }
    func articleAtIndex(_ index: Int) -> News {
        let newitem = self.newitems[index]
        return News(newitem)
    }
    func add(newArticles: [New]) {
        newitems.append(contentsOf: newArticles)
    }
    func totalNoOfArticles() -> Int {
        return self.Count
    }
}
struct News {
    private let newitem: New
}
extension News {
    init(_ newitem: New) {
        self.newitem = newitem
    }
}
extension News {
    var title: String {
        return newitem.title
    }
    var description: String? {
        return newitem.description
    }
    var articleURL: String {
        return newitem.url
    }
    var urlToImage: String{
        return newitem.urlToImage
    }
}







//class NewsPageModelView: UIAlertController{
//    
//    
//    func showAlert(with title: String, message: String, action: String) {
//        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Button", style: .default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
//    }
//
//
//    
//
//}
