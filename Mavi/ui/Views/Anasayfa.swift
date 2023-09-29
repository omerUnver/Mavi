//
//  ViewController.swift
//  Mavi
//
//  Created by M.Ömer Ünver on 26.09.2023.
//

import UIKit

class Anasayfa: UIViewController {

    
    @IBOutlet weak var totalProductLabel: UILabel!
    @IBOutlet weak var productCollectionView: UICollectionView!
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var subCategoryCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewDelegates()
        subCategoryLayout()
        categoryLayout()
        productLayout()
        totalProductLabel.text = "\(productData.count) Ürün"
    }
    
    
    func productLayout(){
        let productLayout = UICollectionViewFlowLayout()
        productLayout.scrollDirection = .vertical
        productLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        productLayout.minimumLineSpacing = 5
        productLayout.minimumInteritemSpacing = 5
        
        let width = UIScreen.main.bounds.width
        let itemGenislik = (width - 30) / 2
        productLayout.itemSize = CGSize(width: itemGenislik, height: itemGenislik * 2)
        productCollectionView.collectionViewLayout = productLayout
    }
    
    func categoryLayout(){
        let indexPath = IndexPath(item: 0, section: 0)
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        let categoryLayout = UICollectionViewFlowLayout()
        categoryLayout.scrollDirection = .horizontal
        categoryLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        categoryLayout.minimumLineSpacing = 10
        categoryLayout.minimumInteritemSpacing = 10
        categoryLayout.itemSize = CGSize(width: cell.categoryLabel.frame.width, height: 50)
        categoryCollectionView.collectionViewLayout = categoryLayout
    }
    func subCategoryLayout(){
        let subCategoryLayout = UICollectionViewFlowLayout()
        subCategoryLayout.scrollDirection = .horizontal
        subCategoryLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        subCategoryLayout.minimumLineSpacing = 5
        subCategoryLayout.minimumInteritemSpacing = 5
        subCategoryLayout.itemSize = CGSize(width: 150, height: 220 )
        
        subCategoryCollectionView.collectionViewLayout = subCategoryLayout
    }
    
    func collectionViewDelegates(){
        categoryCollectionView.dataSource = self
        categoryCollectionView.delegate = self
        subCategoryCollectionView.dataSource = self
        subCategoryCollectionView.delegate = self
        productCollectionView.dataSource = self
        productCollectionView.delegate = self
        
    }


}

extension Anasayfa : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == subCategoryCollectionView {
            return subCategoryData.count
        } else if collectionView == productCollectionView {
            return productData.count
        }
        return categoryData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //SubCategoryCell
        if (subCategoryCollectionView == collectionView) {
            let cell = subCategoryCollectionView.dequeueReusableCell(withReuseIdentifier: "subCategoryCell", for: indexPath) as! SubCategoryCell
            let subCategory = subCategoryData[indexPath.row]
            cell.subCategoryImageView.image = UIImage(named: subCategory.image!)
            return cell
            
            //Product Cell
        } else if (productCollectionView == collectionView) {
            let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as! ProductCell
            let product = productData[indexPath.row]
            cell.productCategory.text = product.category
            cell.productImageView.image = UIImage(named: product.image!)
            cell.productPrice.text = "\(product.price!) ₺"
            cell.productSubCategory.text = product.subCategory
            cell.productSubCategory2.text = product.subCategory2
            return cell
        }
        
        
        
//  CategoryCell
        let cell = categoryCollectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoryCell
        let category = categoryData[indexPath.row]
        cell.categoryLabel.text = category.categoryName
        return cell
    }
    
    
    
    
}

