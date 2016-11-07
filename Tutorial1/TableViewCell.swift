//
//  TableViewCell.swift
//  Tutorial1
//
//  Created by Abhishek Agarwal on 07/11/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
 
    func setCollectionViewDataSourceDelegate
        <D: protocol<UICollectionViewDataSource, UICollectionViewDelegate>>
        (dataSourceDelegate: D, forRow row: Int) {
        
        //Setting HomeViewController as the datasource and delegate for the collection view
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        //Tag will be used to identify collectionview from others. Used when the numberOfItemsInSection is called
        collectionView.tag = row
        collectionView.reloadData()
    }
}
