import Cocoa
import CreateML
import NaturalLanguage
import CoreML

let data = try MLDataTable(contentsOf: URL(fileURLWithPath: "/Users/akshaydevkate/Desktop/MasterThesis/IOS application/ml model/inputcopy.json"))

let (train,test) = data.randomSplit(by: 0.8,seed: 5)

let thesis = try MLTextClassifier(trainingData: train,textColumn: "text",labelColumn: "label")

// training accuracy as a percentage
let trainingAccuracy = (1.0 - thesis.trainingMetrics.classificationError) * 100

//validating accuracy as a percentage
let validationAccuracy = (1.0 - thesis.validationMetrics.classificationError) * 100

let metaDAta = MLModelMetadata(author: "Akshay Datta Devkate", shortDescription: "Machine learning text classification model to measure the impact of dieseases on blood cells", license: "No", version: "1")

try thesis.write(to: URL(fileURLWithPath: "/Users/akshaydevkate/Desktop/MasterThesis/TrainTest/thesistest.mlmodel"),metadata: metaDAta)



