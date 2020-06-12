//
//  ProfilViewController.swift
//  iosLayananMaskam
//
//  Created by Imam Syuhada on 10/06/20.
//  Copyright © 2020 Imam Syuhada. All rights reserved.
//

import UIKit

class ProfilViewController: UIViewController {
    @IBOutlet weak var photoProfile: UIImageView!
    
    @IBOutlet weak var fullnameProfil: UILabel!
    @IBOutlet weak var emailProfil: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoProfile.image = UIImage(named: "profil_sample")
        photoProfile.makeRounded()
        fullnameProfil.text = "Imam Syuhada"
        emailProfil.text = "imam.sy11@gmail.com"
    }
}

extension UIImageView {
    func makeRounded() {
        self.layer.borderWidth = 4
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.brown.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
