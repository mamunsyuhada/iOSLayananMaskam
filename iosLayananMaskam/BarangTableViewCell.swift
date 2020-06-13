//
//  BarangTableViewCell.swift
//  iosLayananMaskam
//
//  Created by Imam Syuhada on 10/06/20.
//  Copyright © 2020 Imam Syuhada. All rights reserved.
//

import UIKit

class BarangTableViewCell: UITableViewCell {
    @IBOutlet weak var photoBarang: UIImageView!
    @IBOutlet weak var namaBarang: UILabel!
    @IBOutlet weak var tersediaBarang: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
