//
//  BeforeCollectionViewController.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/9/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import UIKit

private let reuseIdentifier = "BeforeCollectionCell"

class BeforeCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beforePages.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BeforeCollectionViewCell
    
        // Configure the cell
        cell.setUpCell(info: beforePages[indexPath.row])
        
    
        return cell
    }
    
    //MARK: - UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
       return CGSize(width: 100.0, height: 100.0)
    }

    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let newPageViewController = InfoPageViewController()
        newPageViewController.page = beforePages[indexPath.row]
        self.present(newPageViewController, animated: true, completion: nil)
    }

}
