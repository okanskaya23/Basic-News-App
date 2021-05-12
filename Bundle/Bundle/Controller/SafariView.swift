//
//  SafariView.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//

import Foundation
import SafariServices

class OpenWeb: UIViewController, SFSafariViewControllerDelegate {
    var newsWebURL: URL!
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = SFSafariViewController(url: newsWebURL)
        vc.delegate = self
        present(vc,animated: false)
    }
}
