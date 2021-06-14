//
//  ProfileController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 14.06.2021.
//

import UIKit


protocol MyDataSendingDelegate {
    func sendDataToFirstViewController(myData: String)
}
class ProfileController: UIViewController {
    var delegate: MyDataSendingDelegate? = nil
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func Save(_ sender: Any) {
        if self.delegate != nil && self.name.text != nil {
            
            let dataToBeSent = self.name.text
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
    
}
