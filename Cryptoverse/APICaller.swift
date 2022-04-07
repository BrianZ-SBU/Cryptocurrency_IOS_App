//
//  APICaller.swift
//  testing123
//
//  Created by Brian Zhou on 4/6/22.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    private struct Constants {
        static let apiKey = "17A0F88F-6B0A-4FCC-8B4D-A6F4D4CD2108"
        static let endpoint = "https://rest-sandbox.coinapi.io/v1/assets/"
    }
    
    private init() {}
    
    public func getCryptoStats(completion: @escaping(Result<[Crypto], Error>) -> Void){
        guard let URL = URL(string: Constants.endpoint + "?apikey=" + Constants.apiKey) else {
            return
        }
        let getRequest = URLSession.shared.dataTask(with: URL) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let coins = try JSONDecoder().decode([Crypto].self, from: data)
                completion(.success(coins))
                
            }
            catch {
                completion(.failure(error))
            }
        }
        getRequest.resume()
    }
        
}

