//
//  Recipe.swift
//  zadacha12
//
//  Created by Slava Havvk on 22.11.2021.
//

import Foundation


class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var toppings:[String]
}
