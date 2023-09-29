//
//  ProductData.swift
//  Mavi
//
//  Created by M.Ömer Ünver on 27.09.2023.
//

import Foundation

class ProductData {
    var category : String?
    var subCategory : String?
    var subCategory2 : String?
    var price : Double?
    var image : String?
    
    init(category: String, subCategory: String, subCategory2: String, price: Double, image: String) {
        self.category = category
        self.subCategory = subCategory
        self.subCategory2 = subCategory2
        self.price = price
        self.image = image
    }
    
}

var productData = [
                  ProductData(category: "Mavi Black", subCategory: "MARCUS", subCategory2: "Normal Bel", price: 899.99, image: "product1"),
                   ProductData(category: "Mavi Pro", subCategory: "JAKE", subCategory2: "Skinny, Normal Bel", price: 899.99, image: "product2"),
                  ProductData(category: "MAVİ PREMIUM", subCategory: "JAMES", subCategory2: "Skinny, Normal Bel", price: 859.99, image: "product3"),
                   ProductData(category: "PREMIUM BLUE", subCategory: "MARCUS", subCategory2: "Slim Straight, Normal Bel", price: 859.99, image: "product4"),
                  ProductData(category: "Mavi Pro", subCategory: "LISBON", subCategory2: "Loose, Normal Bel", price: 799.99, image: "product5"),
                   ProductData(category: "Classic Denim", subCategory: "MILAN", subCategory2: "Tapered, Normal Bel", price: 859.99, image: "product6"),
                   ProductData(category: "", subCategory: "177 Comfort", subCategory2: "Regular Straight, Normal Bel", price: 759.99, image: "product7"),
                   ProductData(category: "Mavi Black", subCategory: "JAMES", subCategory2: "Skinny, Normal Bel", price: 859.99, image: "product8"),
                  ProductData(category: "", subCategory: "JAKE", subCategory2: "Skinny, Normal Bel", price: 899.99, image: "product9"),
                  ProductData(category: "", subCategory: "ROB", subCategory2: "Skinny, Normal Bel", price: 759.99, image: "product10"),
                  ProductData(category: "MV91", subCategory: "OXFORD", subCategory2: "Loose, Normal Bel", price: 799.99, image: "product11"),
                  ProductData(category: "Mavi Black", subCategory: "MARCUS", subCategory2: "Normal Bel", price: 899.99, image: "product1")
]

