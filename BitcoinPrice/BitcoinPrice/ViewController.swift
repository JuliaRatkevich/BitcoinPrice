//
//  ViewController.swift
//  BitcoinPrice
//
//  Created by Yuliya Ratkevcih on 10.06.20.
//  Copyright © 2020 Yuliya Ratkevcih. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTable()
    }
    
    private func setupTable() {
        table.dataSource = self
        table.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 2
        case 2:
            return 3
        default:
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BitcoinPriceCell",
                                                 for: indexPath) as! BitcoinPriceCell
        
        cell.dateLabel.text = "Date"
        cell.priceLabel.text = "Price"
        cell.differenceLabel.text = "Diff"
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section \(section + 1)"

    }

}
