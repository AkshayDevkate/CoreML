//
//  NewTableViewController.swift
//  Final
//
//  Created by Akshay Devkate on 07/04/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class NewTableViewController: UIViewController {
    
    var name = ["White Blood Cell", "Red Blood Cell", "Platelets"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}




extension NewTableViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120 
    }
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return name.count
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? FirstTableViewCell
        
        
        cell?.lbl.text = name[indexPath.row]
        
                return cell!
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        
        vc?.name = name[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
    }
    
}


