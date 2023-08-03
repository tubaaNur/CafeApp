//
//  MenuPage.swift
//  CafeApp
//
//  Created by Tuba Nur  on 3.08.2023.
//

import UIKit

class MenuPage:UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var coffee = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        coffee = ["Latte", "Americano", "Flat White", "Türk Kahvesi", "Frappuccino", "White Chocolate Latte", "Filter Coffee", "Mocha", "Maccihato"]
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath)
        cell.textLabel?.text = coffee[indexPath.row]
        return cell
    }
    

    @IBAction func btnGoToHome(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
