//
//  Model.swift
//  Simpsons
//
//  Created by ufuk can yüksel on 10.06.2023.
//

import Foundation
import UIKit


class SimpsonModel {
    
    var name :String
    var job :String
    var images : UIImage
    
    init(name: String , job: String , image: UIImage ) {
        self.name = name
        self.job = job
        self.images = image
    }
    
}
