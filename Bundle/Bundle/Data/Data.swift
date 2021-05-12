//
//  Data.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 28.04.2021.
//


import Foundation


class loaddata {
    func getArticles(for urlString: String, completion: @escaping ([New]?, Int) -> ()) {

        let correct = urlString.replacingOccurrences(of: " " , with: "-").lowercased()
        let newsURL = "https://newsapi.org/v2/top-headlines?"+correct+"&country=tr&page=1&apiKey=779c933cc31f45f29b8011cbf1670018"
        if let url = URL(string: newsURL) {
            let request = URLRequest(url: url, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10)
            URLSession.shared.dataTask(with: request)  { data, response, error in
                if error != nil
                {
                    print("data ")
                    completion(nil,0)
                }
                else if let data = data {
                    do {
                        let maind = try JSONDecoder().decode(maind.self, from: data)
                        let articleList = try JSONDecoder().decode(NewsArr.self, from: data)
                        completion(articleList.articles,maind.totalResults)
                    } catch
                    {
                        completion(nil,0)
                    }
                }

            }.resume()
        }
    }
}
