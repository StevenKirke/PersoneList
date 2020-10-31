//
//  NetworkDataFetcher.swift
//  PersoneListApp
//
//  Created by JARVIS on 01.11.2020.
//

import Foundation

protocol DataFetcherP {
    func fetchData<T: Decodable>(urlString: String, completion: @escaping (T?) -> Void )
}

class NetworkDataFetcher: DataFetcherP {
    
    let networkService: NetworkServiceP
    
    init(networkService: NetworkServiceP = NetworkService()) {
        self.networkService = networkService
    }
    
    func fetchData<T: Decodable>(urlString: String, completion: @escaping (T?) -> Void ) {
        networkService.request(urlString: urlString) { (data, error) in
            if let error = error {
                print("Error function fetchData \(error.localizedDescription)")
                completion(nil)
            }
            let decode = self.decodeJSON(type: T.self, from: data)
            completion(decode)
        }
    }
    
    private func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> T? {
        let decoder = JSONDecoder()
        guard let data = from else {
            return nil
        }
        do {
            let objects = try decoder.decode(type.self, from: data)
            return objects
        } catch let error {
            print("Error function decodeJSON \(error.localizedDescription)")
            return nil
        }
        
    }
}
