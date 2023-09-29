//
//  SubCategoryData.swift
//  Mavi
//
//  Created by M.Ömer Ünver on 26.09.2023.
//

import Foundation

class SubCategoryData {
    var image : String?
    init(image: String) {
        self.image = image
    }
    
}

var subCategoryData = [SubCategoryData(image: "skinnyJean"), SubCategoryData(image: "tapered"), SubCategoryData(image: "slim"), SubCategoryData(image: "regular"), SubCategoryData(image: "loose"), SubCategoryData(image: "comfort")]
