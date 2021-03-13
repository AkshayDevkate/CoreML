//
//  ViewController.swift
//  TextClassification
//
//  Created by Akshay Devkate on 12/03/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit
import NaturalLanguage

class ViewController: UIViewController {
    
    
    @IBOutlet weak var output: UILabel!
        var symptoms: String?
  
    private lazy var SentimentClassifier: NLModel? = {
          let model = try? NLModel(mlModel: thesistest().model)
          return model
      }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Mark: - When Button tapped
    
    @IBAction func button(_ sender: Any) {
        
        
     //opens alert view when button tapped
        let enter = UIAlertController(title: "Symptoms:", message: "Enter Symptoms", preferredStyle: .alert)
        
        // adding text field in alert view
        enter.addTextField {(textField) in
            textField.placeholder = "Enter symptoms"
    
            textField.rightViewMode = .always
            
            textField.rightViewRect(forBounds: CGRect(x: -10, y: 0, width: 30, height: 30))
        }
        
      
        enter.addAction(UIAlertAction(title: "Submit", style: .default, handler: { _ in
            self.output.text = "Most affected blood cell is: "
            // giving input to ml model
            if let text = enter.textFields?[0].text{
                self.symptoms = text
                
            
                if let label = self.SentimentClassifier?.predictedLabel(for: text ){
                switch label {
                case "red_blood_cell_abnormal_count":
                    self.output.text = "red blood cell abnormal count"
                
                case "low_red_blood_cell_count":
                    self.output.text = "low red blood cell count"
                
                case "High_red_blood_cell_count":
                    self.output.text = "High red blood cell count"
                
                case "WBC_high_basophil":
                    self.output.text = "WBC high basophil"
                
                case "WBC_low_neutrophil":
                    self.output.text = "WBC low neutrophil"
                
                case "WBC_high_eosinophil":
                    self.output.text = "WBC high eosinophil"
                
        
                case "WBC_Plasma_common":
                    self.output.text = "WBC Plasma common"
                    
                case "WBC_high_Plasma":
                                       self.output.text = "WBC high Plasma"
                default:
                    self.output.text = "Nothing"
                }
            }
            }
            
            
        }))
        self.present(enter,animated: true, completion: nil)
    }
    
}

