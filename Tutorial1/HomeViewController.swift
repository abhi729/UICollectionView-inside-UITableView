//
//  HomeViewController.swift
//  Tutorial1
//
//  Created by Abhishek Agarwal on 07/11/16.
//  Copyright © 2016 Abhishek. All rights reserved.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfItemsArray[collectionView.tag]
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("squareCell", forIndexPath: indexPath)
        return cell
    }
    
}

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Do not forget to set the datasource and delegate for the tableview in the storyboard.
    @IBOutlet weak var tableView: UITableView!
    
    var numberOfItemsArray = [5,2,1,4,3,5,2,1,4,3] //numberOfItemsArray holds the number of items in each row of the collectionView
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        return cell
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        guard let tableViewCell = cell as? TableViewCell else { return }
        tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: indexPath.row)
    }
}
