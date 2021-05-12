//
//  protocol_header.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 12.05.2021.
//


import UIKit

protocol Msg {
    var tittle: String {get}
    var msg: String {get}
    var color: String {get}
}


class GoodMsg: Msg {
    var tittle: String{
        return "Cool Cool Cool Cool Cool Cool Cool Cool"
    }
    
    var msg: String{
        return "Build succeed"
    }
    
    var color: String{
        return "Blue"
    }
    
    
}

class BadMsg: Msg {
    var tittle: String{
        return "Error has occurred"
    }
    
    var msg: String{
        return "Build Failed"
    }
    
    var color: String{
        return "red"
    }
    
    
}
//protocol Serializer {
//
//    func serialize(data: AnyObject) -> NSData?
//
//}
//
//class RequestSerializer: Serializer {
//
//    func serialize(data: AnyObject) -> NSData? {
//        ...
//    }
//
//}
//
//class DataManager {
//
//    var serializer: Serializer? = RequestSerializer()
//
//}
