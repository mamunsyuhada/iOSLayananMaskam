//
//  DetailBarangViewController.swift
//  iosLayananMaskam
//
//  Created by Imam Syuhada on 12/06/20.
//  Copyright © 2020 Imam Syuhada. All rights reserved.
//

import UIKit

class DetailBarangViewController: UIViewController {

    @IBOutlet weak var iconBarang: UIImageView!
    @IBOutlet weak var namaBarang: UILabel!
    @IBOutlet weak var imageBarang: UIImageView!
    @IBOutlet weak var descBarang: UILabel!
    @IBOutlet weak var btnPinjam: UIButton!
    @IBOutlet weak var tersediaBarang: UILabel!
    
    
    var barang: Barang?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = barang{
            iconBarang.image = result.ico
            namaBarang.text = result.nama
            imageBarang.image = result.photo
            descBarang.text = result.desc
            tersediaBarang.text = "\(result.tersedia) pcs"
            btnPinjam.setTitle("Pinjam Rp.  \(result.harga)/hari", for: .normal)
        }
    }
}
