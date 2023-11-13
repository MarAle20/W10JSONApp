//
//  GetData.swift
//  W10JSONApp
//
//  Created by Default User on 11/13/23.
//

import SwiftUI

public struct People: Codable, Hashable {
            
    public var ID: String
    public var Name : String
    public var Email: String
    public var Address: String
    public var Salary: String
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(Name)
    }
}

class GetData: ObservableObject {
    @Published var people = [People]()
    
    init() {
        let url = URL(string: "http://alejanma.dev.fast.sheridanc.on.ca/prog39856/sqlToJson.php")!
        
        URLSession.shared.dataTask(with: url){ (data,response,error) in
            do{
                if let peopleData = data{
                    let decodedData = try JSONDecoder().decode([People].self, from: peopleData)
                    DispatchQueue.main.sync {
                        print(decodedData)
                        self.people = decodedData
                    }
                }
            }catch{
                print("Error\(error)")
            }
        }.resume()
    }
}
