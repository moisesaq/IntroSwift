//
//  ViewController.swift
//  IntroSwift
//
//  Created by Moises on 7/11/16.
//  Copyright © 2016 Moises. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentActionBasic: UISegmentedControl!
    @IBOutlet weak var numA: UITextField!
    @IBOutlet weak var numB: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var ok: UIButton!
    @IBOutlet weak var calculateAll: UIButton!
    
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var switchOrder: UISwitch!
    @IBOutlet weak var resultArray: UILabel!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var order: UIButton!
    @IBOutlet weak var join: UIButton!
    
    @IBOutlet weak var testSwift: UIButton!
    @IBOutlet weak var resultTest: UILabel!
    
    let calc = Calculator()
    var operationAction: Int = 0
    
    /*TYPE DATA*/
    var message: String = "Hello swift"
    let animals: String = "Dog and cat"
    var pi: Double = 3.1415
    var flag: Bool = true
    var amount: Int = 100
    
    var a: Double = 0.0
    var b: Double = 0.0
    
    /*ARRAY*/
    var lastNum: Double = 0.0
    var lastNumText = ""
    var listNumbers = [Double]()
    
    var listCountries = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        operationAction = calc.SUM
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch segmentActionBasic.selectedSegmentIndex {
        case 0:
            operationAction = calc.SUM;
        case 1:
            operationAction = calc.SUBSTRACT;
        case 2:
            operationAction = calc.DIVIDE;
        case 3:
            operationAction = calc.MULTIPLICATION;
        default:
            break;
        }
    }
    
    @IBAction func calculate(sender: AnyObject) {
        a = Double(numA.text!)!
        b = Double(numB.text!)!
        
        
        result.text = calc.startOperation(a, numB: b, operation: operationAction)

    }

    @IBAction func startCalculateAll(sender: UIButton) {
        a = Double(numA.text!)!
        b = Double(numB.text!)!
        
        let resultOpe = calc.calculateAll(a, b: b)
        result.text = "Sum: \(resultOpe.0) >> Substract: \(resultOpe.1)"
    }
    
    @IBAction func addNum(sender: AnyObject) {
        addToListCountries(textField.text!)
    }
    
    
    @IBAction func orderList(sender: AnyObject) {
        if(switchOrder.on){
            listCountries = listCountries.sort {$0 > $1}
            resultArray.text = String(listCountries)
        }else if(!switchOrder.on){
            listCountries = listCountries.reverse()
            resultArray.text = String(listCountries)
        }
    }
    
    @IBAction func startJoin(sender: AnyObject) {
        let resultText = joinText(list: listCountries)
        resultArray.text = resultText
    }
    
    /*------ ARRAYS ----*/
    func addToListCountries(country: String){
        if(country != ""){
            listCountries.append(country)
            //listCountries += [country]
            
            resultArray.text = String(listCountries)
        }else{
            print("Write country")
        }
    }
    
    func joinText(separator: Character = "*", list: [String]) -> String{
        var join: String = ""
        /*for text in list{
            join += text
            join += String(separator)
        }*/
        
        //THIS IS FOR ENUMERATE AN ARRAY
        for (index, text) in list.enumerate(){
            join += text
            if(index < list.count - 1){
                join += String(separator)
            }
        }
        return join
    }
    
    @IBAction func startTestSwift(sender: AnyObject) {
        let test = TestSwift()
        print(test.testTupla())
        print(test.testTupla2())
        resultTest.text = test.testTupla3Practico(100, y: 100)
    }
}

