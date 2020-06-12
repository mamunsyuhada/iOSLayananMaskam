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
    @IBOutlet weak var backGroundProfil: UIView!
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoProfile.image = profil.photo
        photoProfile.makeRounded()
        
        fullnameProfil.text = profil.fullname
        fullnameProfil.backgroundColor = UIColor(red: 243/255.0, green: 167/255.0, blue: 52/255.0, alpha: 1.0)
        fullnameProfil.textColor = UIColor.white
        
        emailProfil.text = profil.email
        emailProfil.backgroundColor = UIColor(red: 243/255.0, green: 167/255.0, blue: 52/255.0, alpha: 1.0)
        emailProfil.textColor = UIColor.white
        
    }
    
}

extension UIImageView {
    func makeRounded() {
        self.layer.borderWidth = 6
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor(red: 66/255.0, green: 72/255.0, blue: 98/255.0, alpha: 1.0).cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
