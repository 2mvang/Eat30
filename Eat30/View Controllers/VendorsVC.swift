//
//  VenderVC.swift
//  Eat30
//
//  Created by Marissa Vang on 4/14/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation
import UIKit

class VendorsVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension VendorsVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("you tapped me!")
    }
}

extension VendorsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vendorCell", for: indexPath)
        
        cell.textLabel?.text = "Hello World"
        
        return cell
    }

}
