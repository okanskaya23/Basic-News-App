//
//  ViewController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 29.04.2021.
//

import UIKit
import SafariServices

class localDisplay: UIViewController, SFSafariViewControllerDelegate {
    var ImgUrl: URL!
    var tsi: String = ""
    var ds: String = ""
    var NewUrl: String = ""
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var news: UITextView!
    @IBOutlet weak var tittle: UILabel!
    
    
    @IBAction func Web(_ sender: Any) {
        let urlString = NewUrl
        if let url = URL(string: urlString) {
            let sfConfiguration = SFSafariViewController.Configuration()
            sfConfiguration.entersReaderIfAvailable = true
            let articleWebView = SFSafariViewController(url: url, configuration: sfConfiguration)
            articleWebView.delegate = self
            present(articleWebView, animated: true)
        }
    }
    
    
    
    
    
    func setImg(with ImgVar: URL){
        image.load(url: ImgVar)
        
    }
    func setTitle(with ImgVar: String){
        news.text = ds
        
    }
    func setBody(with ImgVar: String){
        tittle.text = tsi
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setImg(with: ImgUrl)
        setTitle(with: tsi)
        setBody(with: ds)
    }

    





}
