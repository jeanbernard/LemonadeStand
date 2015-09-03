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
    //MARK: IBActions
    
    @IBAction func addLemonButtonPressed(sender: UIButton) {
        println("Add lemon button pressed")
    }
    
    @IBAction func removeLemonButtonPressed(sender: UIButton) {
        println("Remove lemon button pressed")
    }
    
    @IBAction func addIceButtonPressed(sender: UIButton) {
        println("Add ice button pressed")
    }
    
    @IBAction func removeIceButtonPressed(sender: UIButton) {
        println("Remove ice button pressed")
    }
    
    
    
    //MARK:
    //MARK: Inventory
    
    var currentMoney = 10.00
    var currentLemons = 1
    var currentIceCubes = 3
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateMainView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateMainView(){
        currentMoneyLabel.text = "\(currentMoney)"
        currentLemonsLabel.text = "\(currentLemons)"
        currentIceCubesLabel.text = "\(currentIceCubes)"
    }


}

