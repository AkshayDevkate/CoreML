//
//  PredictViewController.swift
//  Final
//
//  Created by Akshay Devkate on 24/03/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit
import NaturalLanguage

class PredictViewController: UIViewController {
    
    
    @IBOutlet weak var labelone: UILabel!
    
    @IBOutlet weak var labeltwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    var predict: String?
    
    
    
    private lazy var SentimentClassifier: NLModel? = {
        let model = try? NLModel(mlModel: thesistest().model)
        return model
    }()
    
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let label = self.SentimentClassifier?.predictedLabel(for: predict!){
                           switch label {
                           case "red_blood_cell_abnormal_count":
                               self.labelone.text = "red blood cell"
                               self.labelThree.text = "RBC"
                             
                           
                           case "low_red_blood_cell_count":
                               self.labelone.text = "RBC"
                               self.labelThree.text = "Red Blood Cell"
                               self.labeltwo.text = "low count"
                           
                           case "High_red_blood_cell_count":
                               self.labelone.text = "RBC"
                               self.labelThree.text = "Red Blood Cell"
                               self.labeltwo.text = "High count"
                           
                           case "WBC_high_basophil":
                              self.labelone.text = "WBC"
                              self.labelThree.text = "Basophil"
                              self.labeltwo.text = "High Count"
                           
                           case "WBC_low_neutrophil":
                               self.labelone.text = "WBC"
                               self.labelThree.text = "Neutrophil"
                               self.labeltwo.text = "Low count"
                           
                           case "WBC_high_eosinophil":
                               self.labelone.text = "WBC"
                               self.labelThree.text =  "Eosinophil"
                               self.labeltwo.text = "High Count"
                           
                           case "WBC_Plasma_common":
                               self.labelone.text = "WBC"
                               self.labelThree.text = "Plasma"
                               self.labeltwo.text = "Abnormal Count"
                               
                           case "WBC_high_Plasma":
                                self.labelone.text = "WBC"
                                self.labelThree.text = "Plasma"
                                self.labeltwo.text = "High count"
                           default:
                               self.labelone.text = "Nothing"
                           }
                       }
        
    }
    


    @IBAction func dismiss(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
