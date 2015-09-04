//
//  ViewController.swift
//  LemonadeStand
//
//  Created by Jean Bernard on 9/2/15.
//  Copyright (c) 2015 Jean Bernard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:
    //MARK: IBOutlets
    
    @IBOutlet weak var currentMoneyLabel: UILabel!
    @IBOutlet weak var currentLemonsLabel: UILabel!
    @IBOutlet weak var currentIceCubesLabel: UILabel!
    
    
    //MARK:
    //MARK: Inventory
    
    var currentMoney = 10.00
    var currentLemons = 1
    var currentIceCubes = 3
    
    
    //MARK:
    //MARK: IBActions
    
    @IBAction func addLemonButtonPressed(sender: UIButton) {
        
        if currentMoney > 1 {
            currentMoney -= 2
            currentLemons += 1
            updateMainView()
        } else {
            showAlert(header: "Out of money!!", message: "Can't purchase any more lemons. Must acquire more money.")
        }
       
    }
    
    @IBAction func removeLemonButtonPressed(sender: UIButton) {
        
        if !(currentLemons == 0) {
            currentMoney += 2
            currentLemons -= 1
            updateMainView()
        } else {
            showAlert(header: "Out of lemons!!", message: "No more lemons to sell.")
        }
        
       
    }
    
    @IBAction func addIceButtonPressed(sender: UIButton) {
        
        if currentMoney > 0 {
            currentMoney -= 1
            currentIceCubes += 1
            updateMainView()
        } else {
            showAlert(header: "Out of money!!", message: "Can't purchase any more ice. Must acquire more money")
        }
        
    }
    
    @IBAction func removeIceButtonPressed(sender: UIButton) {
        
        if !(currentIceCubes == 0) {
            currentMoney += 1
            currentIceCubes -= 1
            updateMainView()
        } else {
            showAlert(header: "Out of ice!!", message: "No more ice to sell")
        }
    }
    
    //MARK:
    //MARK: Methods
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateMainView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateMainView(){
        
        addTextColor(currentLemons, label: currentLemonsLabel)
        addTextColor(currentIceCubes, label: currentIceCubesLabel)
        addTextColor(Int (currentMoney), label: currentMoneyLabel)
        
        currentMoneyLabel.text = "$\(currentMoney)"
        currentLemonsLabel.text = "\(currentLemons)"
        currentIceCubesLabel.text = "\(currentIceCubes)"
    }
    
    func showAlert(header: String = "Warning", message: String) {
        
        var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func addTextColor(amount: Int, label: UILabel) {
        
        if amount == 0 {
            label.textColor = UIColor.redColor()
        } else {
            label.textColor = UIColor.blackColor()
        }
        
    }

    
    
    
    
    
    
    
}

