//
//  ViewController.swift
//  Final Showcase Extravaganza
//
//  Created by Gross, Paul on 12/10/17.
//  Copyright © 2017 Maryville App Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //        initItemView( item: potOfHoney, onTitleLabel: potOfHoneyLabel,  andPriceLabel: potOfHoneyPrice )
                reset()
    }

    //let potOfHoney = ItemOne( title: "Pot of Honey", price: 20.00)
    //Item Prices
    var potOfHoneyPrice = 20.00
    var honeyCombPrice = 45.00
    var beeHivePrice = 30.00
    var beeCupPrice = 3.00
    var beePlushPrice = 7.00
    var beeMaskPrice = 10.00
    
    //Item Amounts
    var potOfHoneySelectedAmount = 0
    var honeyCombSelectedAmount = 0
    var beeHiveSelectedAmount = 0
    var beeCupSelectedAmount = 0
    var beePlushSelectedAmount = 0
    var beeMaskSelectedAmount = 0
    
    //Calculated Price
    var potOfHoneyCalcPrice = 0.0
    func calculatepotOfHoneyTotal() {potOfHoneyCalcPrice = Double(potOfHoneySelectedAmount) * potOfHoneyPrice}
    

    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    @IBOutlet weak var potOfHoneyLabel: UILabel!
    @IBOutlet weak var potOfHoneySelected: UILabel!
    //@IBOutlet weak var potOfHoneyPrice: UILabel!
    
    
    @IBOutlet weak var honeyCombLabel: UILabel!
    @IBOutlet weak var honeyCombSelected: UILabel!
    //@IBOutlet weak var honeyCombPrice: UILabel!
    
    
    @IBOutlet weak var beeHiveLabel: UILabel!
    @IBOutlet weak var beeHiveSelected: UILabel!
    //@IBOutlet weak var beeHivePrice: UILabel!
    
    
    @IBOutlet weak var beeCupLabel: UILabel!
    @IBOutlet weak var beeCupSelected: UILabel!
    //@IBOutlet weak var beeCupPrice: UILabel!
    
    @IBOutlet weak var beePlushLabel: UILabel!
    @IBOutlet weak var beePlushSelected: UILabel!
    //@IBOutlet weak var beePlushPrice: UILabel!
    
    @IBOutlet weak var beeMaskLabel: UILabel!
    @IBOutlet weak var beeMaskSelected: UILabel!
    //@IBOutlet weak var beeMaskPrice: UILabel!
    
    

    
//function that set the price label
    func potOfHoneyTotal() {
        potOfHoneySelected.text = String(potOfHoneyCalcPrice)
 
    }
    
    func reset() {
        potOfHoneySelectedAmount = 0
        honeyCombSelectedAmount = 0
        beeHiveSelectedAmount = 0
        beeCupSelectedAmount = 0
        beePlushSelectedAmount = 0
        beeMaskSelectedAmount = 0
    }
    
//Buttons for Pot of Honey
    @IBAction func potOfHoneyAdd(_ sender: Any) {
        potOfHoneySelectedAmount += 1
        potOfHoneySelected.text = String(potOfHoneySelectedAmount)
        updateTotalPotOfHoney()
        updateTotalPotOfHoneyPrice()
    }
    
    @IBAction func potOfHoneyRemove(_ sender: Any) {
        if potOfHoneySelectedAmount < 1 {
            potOfHoneySelectedAmount = 0
        } else {
            potOfHoneySelectedAmount -= 1 }
        
        potOfHoneySelected.text = String(potOfHoneySelectedAmount)
        updateTotalPotOfHoney()
        updateTotalPotOfHoneyPrice()
    }
//Buttons for Honey Comb
    @IBAction func honeyCombAdd(_ sender: Any) {
        honeyCombSelectedAmount += 1
        honeyCombSelected.text = String(honeyCombSelectedAmount)
        //updateTotalHoneyComb()
        updateTotalHoneyCombPrice()
    }
    
    @IBAction func honeyCombRemove(_ sender: Any) {
        if honeyCombSelectedAmount < 1 {
            honeyCombSelectedAmount = 0
        } else {
            honeyCombSelectedAmount -= 1 }
        
        honeyCombSelected.text = String(honeyCombSelectedAmount)
        //updateTotalPotOfHoney()
        updateTotalHoneyCombPrice()
    }
//Buttons for Beehive
    @IBAction func beeHiveAdd(_ sender: Any) {
        beeHiveSelectedAmount += 1
        beeHiveSelected.text = String(beeHiveSelectedAmount)
        //updateTotalHoneyComb()
        updateTotalBeeHivePrice()
    }
    @IBAction func beeHiveRemove(_ sender: Any) {
        if beeHiveSelectedAmount < 1 {
            beeHiveSelectedAmount = 0
        } else {
            beeHiveSelectedAmount -= 1 }
        
        beeHiveSelected.text = String(beeHiveSelectedAmount)
        //updateTotalPotOfHoney()
        updateTotalBeeHivePrice()
    }
//Buttons for Bee Cup
    @IBAction func beeCupAdd(_ sender: Any) {
        beeCupSelectedAmount += 1
        beeCupSelected.text = String(beeCupSelectedAmount)
        //updateTotalHoneyComb()
        updateTotalBeeCupPrice()
    }
    
    @IBAction func beeCupRemove(_ sender: Any) {
        if beeCupSelectedAmount < 1 {
            beeCupSelectedAmount = 0
        } else {
            beeCupSelectedAmount -= 1 }
        
        beeCupSelected.text = String(beeCupSelectedAmount)
        //updateTotalPotOfHoney()
        updateTotalBeeCupPrice()
    }
    
//Buttons for Bee Plush
    @IBAction func beePlushAdd(_ sender: Any) {
        beePlushSelectedAmount += 1
        beePlushSelected.text = String(beePlushSelectedAmount)
        //updateTotalHoneyComb()
        updateTotalBeePlushPrice()
    }
    
    @IBAction func beePlushRemove(_ sender: Any) {
        if beePlushSelectedAmount < 1 {
            beePlushSelectedAmount = 0
        } else {
            beePlushSelectedAmount -= 1 }
        
        beePlushSelected.text = String(beePlushSelectedAmount)
        //updateTotalPotOfHoney()
        updateTotalBeePlushPrice()
    }
//Buttons for Bee Mask
    @IBAction func beeMaskAdd(_ sender: Any) {
        beeMaskSelectedAmount += 1
        beeMaskSelected.text = String(beeMaskSelectedAmount)
        //updateTotalHoneyComb()
        updateTotalBeeMaskPrice()
    }
    @IBAction func beeMaskRemove(_ sender: Any) {
        if beeMaskSelectedAmount < 1 {
            beeMaskSelectedAmount = 0
        } else {
            beeMaskSelectedAmount -= 1 }
        
        beeMaskSelected.text = String(beeMaskSelectedAmount)
        //updateTotalPotOfHoney()
        updateTotalBeeMaskPrice()
    }
    
    //Functions to update Bee Mask Price & Amount
    var totalBeeMaskPrice: Double = 0
    func updateTotalBeeMaskPrice() {
        totalBeeMaskPrice = 10 * Double(beeMaskSelectedAmount)
        //feeds total price
        updateTotalPrice()
    }
    //Functions to update Bee Plush Price & Amount
    var totalBeePlushPrice: Double = 0
    func updateTotalBeePlushPrice() {
        totalBeePlushPrice = 7 * Double(beePlushSelectedAmount)
        //feeds total price
        updateTotalPrice()
    }
    //Functions to update Bee Cup Price & Amount
    var totalBeeCupPrice: Double = 0
    func updateTotalBeeCupPrice() {
        totalBeeCupPrice = 3 * Double(beeCupSelectedAmount)
        //feeds total price
        updateTotalPrice()
    }
    //Functions to update Bee Hive Price & Amount
    var totalBeeHivePrice: Double = 0
    func updateTotalBeeHivePrice() {
        totalBeeHivePrice = 30 * Double(beeHiveSelectedAmount)
        //feeds total price
        updateTotalPrice()
    }
    //Functions to update Honey Comb Price & Amount
    var totalHoneyCombPrice: Double = 0
    func updateTotalHoneyCombPrice() {
        totalHoneyCombPrice = 45 * Double(honeyCombSelectedAmount)
        //feeds total price
        updateTotalPrice()
    }
    //Functions to update Pot of Honey Price & Amount
    var totalPotOfHoney = 0
    func updateTotalPotOfHoney() {
        totalPotOfHoney = potOfHoneySelectedAmount
        potOfHoneySelected.text = String(totalPotOfHoney)
    }
    var totalPotOfHoneyPrice: Double = 0
    func updateTotalPotOfHoneyPrice() {
        totalPotOfHoneyPrice = 20 * Double(potOfHoneySelectedAmount)
        //feeds total price
        updateTotalPrice()
    }
    
    var totalPrice: Double = 0
    func updateTotalPrice() {
        totalPrice = totalPotOfHoneyPrice + totalHoneyCombPrice + totalBeeHivePrice + totalBeeCupPrice + totalBeePlushPrice + totalBeeMaskPrice
        //adds all total prices together
        totalPriceLabel.text = String(totalPrice)
    }
 
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

