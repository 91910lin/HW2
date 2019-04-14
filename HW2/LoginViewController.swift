//
//  LoginViewController.swift
//  HW2
//
//  Created by User04 on 2019/4/14.
//  Copyright © 2019 91910lin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var changeRestaurantImageView: UIImageView!
    
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetValueLabel: UILabel!
    
    @IBAction func valueSliderChange(_ sender: Any) {
        budgetValueLabel.text = "\(Int(budgetSlider.value * 30000))"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
