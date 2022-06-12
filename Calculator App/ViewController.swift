//
//  ViewController.swift
//  Calculator App
//
//  Created by Kerem Demir on 8.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    
    func clearAll(){
        workings = ""
        calculatorResults.text = ""
    }
    
    func addtoworkings(value: String){
        workings = workings + value
        calculatorResults.text = workings
    }

    @IBAction func allClear(_ sender: Any) {
        clearAll()
    }
    @IBAction func deleteLast(_ sender: Any) {
        if (!workings.isEmpty){
            workings.removeLast()
            calculatorResults.text = workings
        }
    }
    
    @IBAction func yuzde(_ sender: Any) {
        addtoworkings(value: "%")
        
    }
    @IBAction func bolme(_ sender: Any) {
        addtoworkings(value: "/")
    }
    
    @IBAction func carpma(_ sender: Any) {
        addtoworkings(value: "*")
    }
    
    @IBAction func cikarma(_ sender: Any) {
        addtoworkings(value: "-")
    }
    
    @IBAction func toplama(_ sender: Any) {
        addtoworkings(value: "+")
    }
    @IBAction func esittir(_ sender: Any) {
        if (valueInput()){
            let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkedWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            calculatorResults.text = resultString
        }else{
            let alert = UIAlertController(title: "Invalid Input", message: "Calculator unable to do math based on iput", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func valueInput() -> Bool {
        return true
    }
    
    func formatResult(result : Double) -> String{
        if (result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }else{
            return String(format: "%.2f", result)
        }
    }
    
    @IBAction func virgul(_ sender: Any) {
        addtoworkings(value: ",")
    }
    @IBAction func zero(_ sender: Any) {
        addtoworkings(value: "0")
    }
    @IBAction func one(_ sender: Any) {
        addtoworkings(value: "1")
    }
    @IBAction func two(_ sender: Any) {
        addtoworkings(value: "2")
    }
    @IBAction func three(_ sender: Any) {
        addtoworkings(value: "3")
    }
    
    @IBAction func four(_ sender: Any) {
        addtoworkings(value: "4")
    }
    
    @IBAction func five(_ sender: Any) {
        addtoworkings(value: "5")
    }
    @IBAction func six(_ sender: Any) {
        addtoworkings(value: "6")
    }
    @IBAction func seven(_ sender: Any) {
        addtoworkings(value: "7")
    }
    
    @IBAction func eight(_ sender: Any) {
        addtoworkings(value: "8")
    }
    
    @IBAction func nine(_ sender: Any) {
        addtoworkings(value: "9 ")
    }
    
    
    
    
    
    
    
    
    
    
    
}

