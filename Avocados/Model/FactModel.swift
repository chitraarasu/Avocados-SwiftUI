//
//  FactModel.swift
//  Avocados
//
//  Created by kirshi on 6/24/23.
//

import Foundation

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
