//
//  ViewController.swift
//  tippy
//
//  Created by Chenran Gong on 9/14/16.
//  Copyright © 2016 Chenran Gong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet var mainView: UIView!
    
    var tipPercentages = [0.18, 0.2, 0.25]
    var tipPercentages1 = 18.00
    var tipPercentages2 = 20.00
    var tipPercentages3 = 25.00
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let percentage1value = defaults.doubleForKey("percentage1Key")
        tipPercentages1 = percentage1value
        let tipPercentage1Title = (NSString(format: "%.0f", tipPercentages1) as String) + "%"
        tipControl.setTitle(tipPercentage1Title, forSegmentAtIndex: 0)
        tipPercentages[0] = tipPercentages1*(0.01)
        
        let percentage2value = defaults.doubleForKey("percentage2Key")
        tipPercentages2 = percentage2value
        let tipPercentage2Title = (NSString(format: "%.0f", tipPercentages2) as String) + "%"
        tipControl.setTitle(tipPercentage2Title, forSegmentAtIndex: 1)
        tipPercentages[1] = tipPercentages2*(0.01)
        
        let percentage3value = defaults.doubleForKey("percentage3Key")
        tipPercentages3 = percentage3value
        let tipPercentage3Title = (NSString(format: "%.0f", tipPercentages3) as String) + "%"
        tipControl.setTitle(tipPercentage3Title, forSegmentAtIndex: 2)
        tipPercentages[2] = tipPercentages3*(0.01)
        
        calcuteTipsEveryTime()
        
        UIView.animateWithDuration(0.5, animations: {
            // This causes first view to fade in and second view to fade out
            //self.settingView.backgroundColor = UIColor.darkGrayColor()
            self.mainView.alpha = 0.7
            self.mainView.alpha = 1
            
        })
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    func calcuteTipsEveryTime(){
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.locale = NSLocale.currentLocale()
        //formatter.locale = NSLocale(localeIdentifier: "es_ES")
        formatter.maximumFractionDigits = 2;
        tipLabel.text = formatter.stringFromNumber(tip)
        totalLabel.text = formatter.stringFromNumber(total)

    }
    
    @IBAction func calculateTip(sender: AnyObject){
        calcuteTipsEveryTime()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let svc = segue.destinationViewController as! SettingsViewController
        svc.changeTipPercentages = tipPercentages
        
    }
    
    
}

