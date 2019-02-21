//
//  Cell.swift
//  DynamicWidthCollectionViewCell
//
//  Created by Josh R on 2/20/19.
//  Copyright © 2019 Josh R. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    @IBOutlet weak var lbl: UILabel!
    
    func createCell(phrase: String) {
        lbl.text = phrase
    }
    
}
