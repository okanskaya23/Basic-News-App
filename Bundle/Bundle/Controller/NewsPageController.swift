//
//  NewsPageController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//


import Foundation
import UIKit
import SafariServices

class NewsPageController: UICollectionViewController, SFSafariViewControllerDelegate {
    private var LocalModel: NewBundle!
    public var newsURL = "https://newsapi.org/v2/top-headlines?country=eng&apiKey=779c933cc31f45f29b8011cbf1670018"
    //public var newsURL =  "https://newsapi.org/v2/everything?q=tesla&from=2021-03-28&sortBy=publishedAt&apiKey=779c933cc31f45f29b8011cbf1670018"
    override func viewDidLoad() {
        super.viewDidLoad()
        load()
        collectionView.register(UINib(nibName: "NewsCell", bundle: nil), forCellWithReuseIdentifier: "NewsCell");
    }
    private func load() {
        var isdone = false
        loaddata().getArticles(for: newsURL) { articles, num in
            if let articles = articles {
                isdone = true
                self.LocalModel = NewBundle(articles, count: num)
            }
            DispatchQueue.main.async {
                if isdone {
                    self.collectionView.reloadData()
                } 
            }
        }
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.LocalModel == nil ? 0: self.LocalModel.noOfSections
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.LocalModel.newnum(section)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCell", for: indexPath) as! NewsCell
        let articleAtCell = self.LocalModel.articleAtIndex(indexPath.row)

        cell.setImg(with: URL(string: articleAtCell.articleURL)!)
        cell.setTittle(with: articleAtCell.title)
        cell.setSubTittle(with: articleAtCell.description ?? "errror")
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let articleAtCell = self.LocalModel.articleAtIndex(indexPath.row)
        let urlString = articleAtCell.articleURL
        if let url = URL(string: urlString)
        {
            let open = SFSafariViewController.Configuration()
            open.entersReaderIfAvailable = true
            let articleWebView = SFSafariViewController(url: url, configuration: open)
            articleWebView.delegate = self
        }
    }

}


extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
