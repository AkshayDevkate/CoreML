//
//  ViewController.swift
//  Final
//
//  Created by Akshay Devkate on 24/03/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
   
    @IBAction func didTapped() {
        
        if TextInput.text == ""{
            
            let alert = UIAlertController(title: "Alert", message: "Please enter diagnostic details", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
          performSegue(withIdentifier: "InputVCToDisplayVC", sender: self)
        }
        }
    
    
    @IBAction func clear(_ sender: Any) {
        
        self.TextInput.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if (segue.identifier == "InputVCToDisplayVC"){
                    let displayVC = segue.destination as! PredictViewController
                    displayVC.predict = TextInput.text
                    
                }
            }

}

