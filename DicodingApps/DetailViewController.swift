//
//  DetailViewController.swift
//  DicodingApps
//
//  Created by RIZKI on 22/06/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var academyImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descLabel: UILabel!
    
    var academy: AcademyModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = academy {
              nameLabel.text = result.name
              descLabel.text = result.description
              academyImage.image = result.image
            }
       
    }

}
