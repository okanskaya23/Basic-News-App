//
//  ProfileController.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 14.06.2021.
//

import UIKit


protocol MyDataSendingDelegate {
    func sendDataToFirstViewController(myData: String, selectedLng: String)
}
class ProfileController: UIViewController {
    var delegate: MyDataSendingDelegate? = nil
    var lng: String?
    @IBOutlet weak var name: UITextField!

    @IBAction func lngIndex(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            lng = "tr"
        case 1:
            lng = "us"
        default:
            lng = "tr"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func Save(_ sender: Any) {
        if self.delegate != nil && self.name.text != nil{
            
            let dataToBeSent = self.name.text!
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent, selectedLng: lng ?? "tr")
            dismiss(animated: true, completion: nil)
        }
    }
    
}
