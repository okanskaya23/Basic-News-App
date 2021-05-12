//
//  Model.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
// naming

import Foundation




class NewBundle {
    private var newitems: [New] = []
    private var Count: Int = 0
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
//hepsini aynı yere
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
}
