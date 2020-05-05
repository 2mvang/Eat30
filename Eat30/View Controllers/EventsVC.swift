////
////  SearchVC.swift
////  Eat30
////
////  Created by Marissa Vang on 4/14/20.
////  Copyright © 2020 Marissa Vang. All rights reserved.
////
//
//import UIKit
//
//class EventsVC: UIViewController {
//
//    @IBOutlet var tableView: UITableView!
//    
//    let data = DataLoader().eventData
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        tableView.delegate = self
//        tableView.dataSource = self
//        
//        let data = DataLoader().eventData
//        
//        print(data)
//    }
//    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//           // #warning Incomplete implementation, return the number of sections
//           return 26
//       }
//
//       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//           // #warning Incomplete implementation, return the number of rows
//           return data.count
//       }
//
//    
//       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//           let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)
//
//           cell.textLabel?.text = data[indexPath.row].event_name
//           //Configure the cell...
//
//           return cell
//       }
//}
//
//extension EventsVC: UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
//        print("you tapped me!")
//    }
//}
//
//extension EventsVC: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)
//
//        cell.textLabel?.text = "Hello World"
//
//        return cell
//    }
//
//}
