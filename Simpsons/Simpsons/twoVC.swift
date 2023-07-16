//
//  twoVC.swift
//  Simpsons
//
//  Created by ufuk can yüksel on 10.06.2023.
//

import UIKit

class twoVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    
    var selectedSimpson : SimpsonModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageView.image = selectedSimpson?.images
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job

        
    }
    

}
