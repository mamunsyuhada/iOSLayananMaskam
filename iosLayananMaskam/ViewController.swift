//
//  ViewController.swift
//  iosLayananMaskam
//
//  Created by Imam Syuhada on 23/05/20.
//  Copyright © 2020 Imam Syuhada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    @IBOutlet weak var barangTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Layanan Peminjaman"
        
        barangTableView.dataSource = self
        barangTableView.register(UINib(nibName: "BarangTableViewCell", bundle: nil), forCellReuseIdentifier: "BarangCell")
    }
    
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Digunakan untuk menambahkan total item yang akan muncul di dalam Table View
        return barangs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BarangCell", for: indexPath)as! BarangTableViewCell
        let barang = barangs[indexPath.row]
        
        cell.namaBarang.text = barang.nama
        cell.hargaBarang.text = "Rp. \(barang.harga),00"
        cell.photoBarang.image = barang.photo
                
        if  indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor(red: 243/255.0, green: 167/255.0, blue: 52/255.0, alpha: 1.0)
            
        }
        else{
            cell.contentView.backgroundColor = UIColor(red: 66/255.0, green: 72/255.0, blue: 98/255.0, alpha: 1.0)
            
        }
        
        return cell
    }
}

