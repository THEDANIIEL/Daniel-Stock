//
//  Stock.swift
//  Daniel Stock
//
//  Created by Macbook on 4/15/1401 AP.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
