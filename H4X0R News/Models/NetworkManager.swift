//
//  NetworkManager.swift
//  H4X0R News
//
//  Created by Maxim Bekmetov on 04.10.2020.
//

import Foundation

class NetworkManager {
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let deceoder = JSONDecoder()
                    if let safeData = data {
                        do {
                  let results =   try deceoder.decode(Result.self, from: safeData)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}



