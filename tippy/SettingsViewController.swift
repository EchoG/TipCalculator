//
//  SettingsViewController.swift
//  tippy
//
//  Created by Chenran Gong on 9/17/16.
//  Copyright © 2016 Chenran Gong. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var changeTipPercentages = [Double]()
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var percentage1: UITextField!
    @IBOutlet weak var percentage2: UITextField!
    @IBOutlet weak var percentage3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let percentage1Double = changeTipPercentages[0]*100.00
        let percentage1Title = (NSString(format: "%.0f", percentage1Double) as String)
        percentage1.text = percentage1Title
        
        let percentage2Double = changeTipPercentages[1]*100.00
        let percentage2Title = (NSString(format: "%.0f", percentage2Double) as String)
        percentage2.text = percentage2Title
        
        let percentage3Double = changeTipPercentages[2]*100.00
        let percentage3Title = (NSString(format: "%.0f", percentage3Double) as String)
        percentage3.text = percentage3Title
        
    }

    @IBAction func OnTapSetting(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func percentage1GetValue(sender: AnyObject) {
        let percentage1Text = Double(percentage1.text!) ?? 0
        defaults.setDouble(percentage1Text, forKey: "percentage1Key")
        defaults.synchronize()
    }
    

    @IBAction func percentage2GetValue(sender: AnyObject) {
        let percentage2Text = Double(percentage2.text!) ?? 0
        defaults.setDouble(percentage2Text, forKey: "percentage2Key")
        defaults.synchronize()
    }
    
    @IBAction func percentage3GetValue(sender: AnyObject) {
        let percentage3Text = Double(percentage3.text!) ?? 0
        defaults.setDouble(percentage3Text, forKey: "percentage3Key")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
