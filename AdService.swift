//
//  File.swift
//  AdServicePackage
//
//  Created by John Cain on 6/13/24.
//

import Foundation

public class AdService {
    
    public init() {}
    
    public func get_ad(completion: @escaping (String?, Error?) -> Void) {
        // Define the URL for the API endpoint
        guard let url = URL(string: "https://api.adxr.io/secondary/get-ad") else {
            completion(nil, NSError(domain: "Invalid URL", code: 0, userInfo: nil))
            return
        }
        
        // Create a URLSession data task
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Handle errors
            if let error = error {
                completion(nil, error)
                return
            }
            
            // Check for valid data
            guard let data = data else {
                completion(nil, NSError(domain: "No data", code: 0, userInfo: nil))
                return
            }
            
            // Convert data to string
            if let adText = String(data: data, encoding: .utf8) {
                completion(adText, nil)
            } else {
                completion(nil, NSError(domain: "Data decoding error", code: 0, userInfo: nil))
            }
        }
        
        // Start the data task
        task.resume()
    }
}
