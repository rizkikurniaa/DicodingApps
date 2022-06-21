//
//  ViewController.swift
//  DicodingApps
//
//  Created by RIZKI on 21/06/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlet dari TableView.
    @IBOutlet weak var academyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Untuk menyediakan data ke TableView.
        academyTableView.dataSource = self
        
        // MARK: Mendaftarkan XIB ke ViewController.
        academyTableView.register(
          UINib(nibName: "AcademyTableViewCell", bundle: nil), // Isi dengan nama file XIB
          forCellReuseIdentifier: "AcademyCell" // Isi dengan Identifier Cell yang telah ditentukan
        )
    }

}

// MARK: Mengimplementasikan UITableViewDataSource ke dalam ViewController.
extension ViewController: UITableViewDataSource {
    
    // MARK: Mengetahui berapa banyak item yang akan muncul.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // MARK: Mendapatkan jumlah item dari dummyAcademyData.
        return dummyAcademyData.count
    }
    
    // MARK: Mengatur bagaimana tampilan dari setiap TableViewCell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // MARK: Mencari AcademyTableViewCell berdasarkan Identifier.
        if let cell = tableView.dequeueReusableCell(
          withIdentifier: "AcademyCell",
          for: indexPath
        ) as? AcademyTableViewCell { // Mencari UITableViewCell berdasarkan Identifier.
            
            // MARK: Menetapkan nilai gambar dan nama untuk setiap cell/item.
            let academy = dummyAcademyData[indexPath.row]
            cell.academyLabel.text = academy.name
            cell.academyImageView.image = academy.image
            
            // MARK: Mengembalikan cell agar bisa ditampilkan dalam TableView.
            return cell
        } else {
            
            // MARK: Mengembalikan UITableViewCell ketika cell bernilai nil/null.
            return UITableViewCell() // Mengembalikan UITableViewCell jika tidak ditemukan.
        }
    }
    
 
}
