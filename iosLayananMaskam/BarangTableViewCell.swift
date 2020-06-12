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
    @IBOutlet weak var hargaBarang: UILabel!
    @IBOutlet weak var namaBarang: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
