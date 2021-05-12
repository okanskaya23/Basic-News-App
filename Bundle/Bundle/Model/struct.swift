//
//  struct.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//

import Foundation



struct maind: Decodable {
    let status: String
    let totalResults: Int
}


struct NewsArr: Decodable {
    let articles: [New]
}

struct New: Decodable {
    let title: String
    let description: String?
    let url: String
}

