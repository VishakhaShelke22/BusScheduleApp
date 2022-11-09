//
//  ViewController.swift
//  BusScheduleTask
//
//  Created by Mac on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    let city = ["01 Pune","02 Mumbai","03 Aurangabad","04 Nagpur","05 Nashik","06 Kolhapur","07 Shegaon","08 Sangli","09 Satara","10 Akola"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        tableview.register((UINib(nibName: "TableViewCell", bundle: nil)), forCellReuseIdentifier: "cell")
    }
    

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.cityName.text = city[indexPath.row]
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate{
func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       150
   }
}
