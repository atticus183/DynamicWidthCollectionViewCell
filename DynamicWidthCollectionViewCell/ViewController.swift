//
//  ViewController.swift
//  DynamicWidthCollectionViewCell
//
//  Created by Josh R on 2/20/19.
//  Copyright © 2019 Josh R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stringsArray = ["Short word","Medium length word","Let's see how this sentence works.","Short word","Medium length word","Let's see how this sentence works."]
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stringsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Cell
        
        let phrase = stringsArray[indexPath.row]
        
        cell.createCell(phrase: phrase)
        
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let phrase = stringsArray[indexPath.row]
        
        let label = UILabel(frame: CGRect.zero)
        label.text = phrase
        label.sizeToFit()
        
        //Label constraints
        let sbLeadingConstraintValue: CGFloat = 8
        let sbTrailingConstraintValue: CGFloat = 8
        let extraPadding: CGFloat = 16
        
        
        return CGSize(width: label.frame.width + sbLeadingConstraintValue + sbTrailingConstraintValue + extraPadding, height: 30)
        
    }

}

