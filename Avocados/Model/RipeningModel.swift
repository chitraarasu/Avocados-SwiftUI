//
//  RipeningModel.swift
//  Avocados
//
//  Created by kirshi on 6/24/23.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
