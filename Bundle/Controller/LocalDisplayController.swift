//
//  ViewController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 29.04.2021.
//

import UIKit
import SafariServices

class localDisplay: UIViewController, SFSafariViewControllerDelegate {
    let VM = LocalDisplayVievModel();
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var news: UITextView!
    @IBOutlet weak var tittle: UILabel!
    
    
    @IBAction func Web(_ sender: Any) {
        let urlString = VM.NewUrl
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
        news.text = VM.ds
        
    }
    func setBody(with ImgVar: String){
        tittle.text = VM.tsi
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setImg(with: VM.ImgUrl)
        setTitle(with: VM.tsi)
        setBody(with: VM.ds)
    }

    





}
