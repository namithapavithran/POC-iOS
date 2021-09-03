//
//  CustomData.swift
//  POC_iOS
//
//  Created by Namitha Pavithran on 02/09/21.
//

import Foundation
import SwiftUI

struct CustomData: Codable,Identifiable {
    var id = String()
    var name: String
    var profit: Int
    var info: String
    var income: Int
    var connections: [CustomData]? = nil
    init(name: String,profit: Int,info: String,income: Int, connections: [CustomData]? = nil) {
        self.name = name
        self.profit = profit
        self.info = info
        self.income = income
        self.connections = connections
    }
  
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case name = "name"
        case profit = "profit"
        case info = "info"
        case income = "income"
        case connections = "connections"
    }
}
