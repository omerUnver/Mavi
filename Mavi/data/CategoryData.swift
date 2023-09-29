//
//  CategoryData.swift
//  Mavi
//
//  Created by M.Ömer Ünver on 26.09.2023.
//

import Foundation
class CategoryData {
    var categoryName : String?
    
    init(categoryName: String) {
        self.categoryName = categoryName
    }
}
var categoryData = [CategoryData(categoryName: "Skinny"), CategoryData(categoryName: "Slim"), CategoryData(categoryName: "Regular"), CategoryData(categoryName: "Tapered"), CategoryData(categoryName: "Loose"), CategoryData(categoryName: "Comfort, Plus")]
