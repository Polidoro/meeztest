//
//  NewItemViewController.swift
//  MeezTest
//
//  Created by Vincent Polidoro on 3/3/16.
//  Copyright © 2016 Vincent Polidoro. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    // Declare the "Reset board" alert
    var selectItemType = UIAlertController(title: "Select Item Type", message: "What kind of item would you like to create?", preferredStyle: UIAlertControllerStyle.Alert)
    let resetButton = UIButton()
    let formTitle = UILabel()
    let itemTypes = ["Dish","Note","Ingredient","Menu","Recipe Book","Category","Tag"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formTitle.frame.origin = CGPoint(x: 10, y: 30)
        resetButton.frame = CGRectMake(view.frame.width - 50, 30, 40, 40)
        resetButton.setImage(UIImage(named: "reload_48")!, forState: .Normal)
        resetButton.addTarget(self, action: Selector("chooseItemType:"), forControlEvents: .TouchUpInside)
        
        // Define the reset alert actions 
        for itemType in itemTypes {
            let newAction = UIAlertAction(title: itemType, style: .Default, handler: { (action) -> Void in self.setupForm(itemType) })
            selectItemType.addAction(newAction)
        }

        let cancel = UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action) -> Void in })
        selectItemType.addAction(cancel)

        view.addSubview(formTitle)
        view.addSubview(resetButton)
        
        self.parentViewController!.presentViewController(selectItemType, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func chooseItemType(sender: UIButton) {
        self.parentViewController!.presentViewController(selectItemType, animated: true, completion: nil)
    }
    
    func setupForm(itemType: String) {
        self.formTitle.text = "New \(itemType)"
        self.formTitle.sizeToFit()
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
