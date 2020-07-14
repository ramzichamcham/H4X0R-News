//
//  PostData.swift
//  H4X0R News
//
//  Created by Ramzi chamcham on 2020-03-04.
//  Copyright © 2020 Ramzi Chamcham. All rights reserved.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}


struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let url: String?
    let points: Int
    let title: String
    
}
