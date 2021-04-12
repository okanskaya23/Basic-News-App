//
//  ViewController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 11.04.2021.
//

import UIKit



class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let newsapiurl = URL(string :  "https://newsapi.org/v2/top-headlines?country=tr&apiKey=779c933cc31f45f29b8011cbf1670018");
    var newslist: Array<Dictionary<String,Any>> = [];
  
 
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        loadData();
        super.viewDidLoad();
        collectionView.delegate = self;
        collectionView.dataSource = self;
        collectionView.register(UINib(nibName: "ViewCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell");
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.newslist.count;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let row = newslist[indexPath.row];
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ViewCollectionViewCell;
            if let title = row["title"] as? String{
            cell.title.text = title;
            }
            if let source = row["description"] as? String{
                cell.source.text = source
                print(cell.source.text)
            }
            if let imgurl = row["urlToImage"] as? String{
                cell.img.load(url: URL(string: imgurl)!)
            }
            if let date = row["publishedAt"] as? String{
                cell.time.text = date
//                add some operation to calculate 
            }
            return cell;
        }

    func loadData(){
            let session = URLSession.shared.dataTask(with: URLRequest(url : newsapiurl!)) { (data, response, error) in
                if let httpResponse = response as? HTTPURLResponse {
                    if(httpResponse.statusCode != 200) {
                        print("get reguest prob")
                    }
                }
                if let myData = data {
                    if let json = try? JSONSerialization.jsonObject(with: myData, options: []) as! Dictionary<String,Any> {

                        if let statusCode = json["status"] as? String {
                            if(statusCode == "ok") {
                                if let newslist = json["articles"] as? Array<Dictionary<String,Any>> {
                                    self.newslist = newslist;
                                    print("done")
                                    
                                    DispatchQueue.main.async {
                                     self.collectionView.reloadData()
                                    }
                                }
                            }
                        }
                    }
                }
            }
            session.resume();
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
