//
//  DetailViewController.swift
//  Final
//
//  Created by Akshay Devkate on 07/04/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var DetailLabelone: UILabel!
    
    @IBOutlet weak var DetailLabelTwo: UILabel!
    
    
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        switch name{
            
            // Write all cases here
        case "Three" :
            DetailLabelone.text = name
        default:
            DetailLabelone.text = ""
        }
        
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
