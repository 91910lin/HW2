//
//  LoginViewController.swift
//  HW2
//
//  Created by User04 on 2019/4/14.
//  Copyright © 2019 91910lin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var genderTextView: UITextView!
    @IBOutlet weak var carSwitch: UISwitch!
    @IBOutlet weak var carTextView: UITextView!
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var changeRestaurantImageView: UIImageView!
    @IBOutlet weak var resultTextView: UITextView!
    @IBOutlet weak var nameTextView: UITextView!
    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetValueLabel: UILabel!
    @IBOutlet weak var dateChange: UIDatePicker!
    @IBOutlet weak var dateTextView: UILabel!
    @IBAction func result(_ sender: Any) {
        nameTextView.text = name.text
    if(genderSegmentedControl.selectedSegmentIndex==0){
            genderTextView.text = "男"
        }
        else{
            genderTextView.text = "女"
        }
        if(carSwitch.isOn==true){
            carTextView.text = "有開車"
        }
        else{
            carTextView.text = "沒開車"
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd ee HH:mm"
        let dateString = dateFormatter.string(from: dateChange.date)
        dateTextView.text = ("在"+dateString)
        if (budgetSlider.value*3000 == 3000){
            resultTextView.text="錢太多可以給我，我幫你花"
            restaurantImageView.image = UIImage(named: "錢多")
        }
        else if (budgetSlider.value*3000 == 0){
            resultTextView.text="沒錢還敢出門啊？回家洗洗睡吧！"
            restaurantImageView.image = UIImage(named: "沒錢")
        }
        else if(budgetSlider.value*3000 < 100){
            resultTextView.text="在家附近隨便吃吧！"
            restaurantImageView.image = UIImage(named: "隨便")
        }
        else if (budgetSlider.value*3000>0&&budgetSlider.value*3000<800){
            let number = Int.random(in: 0...3)
            if(number == 0){
                resultTextView.text="去吃貴族世家吧！"
                restaurantImageView.image = UIImage(named: "貴族世家")
            }
            if(number == 1){
                resultTextView.text="去吃爭鮮吧！"
                restaurantImageView.image = UIImage(named: "爭鮮")
            }
            if(number == 2){
                resultTextView.text="去吃陶板屋吧！"
                restaurantImageView.image = UIImage(named: "陶板屋")
            }
            if(number == 3){
                resultTextView.text="去吃馬辣吧！"
                restaurantImageView.image = UIImage(named: "馬辣")
            }
        }
        else{
            let number2 = Int.random(in: 0...2)
            if(number2 == 0){
            resultTextView.text="去吃饗食天堂吧！"
            restaurantImageView.image = UIImage(named: "饗食天堂")
            }
            if(number2 == 1){
                resultTextView.text="去吃台北老爺酒店吧！"
                restaurantImageView.image = UIImage(named: "台北老爺酒店")
            }
            if(number2 == 2){
                resultTextView.text="去吃台北文華東方酒店吧！"
                restaurantImageView.image = UIImage(named: "台北文華東方酒店")
            }
        }
    }
    @IBAction func valueSliderChange(_ sender: Any) {
        budgetValueLabel.text = "\(Int(budgetSlider.value * 3000))"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        budgetSlider.value = 0.5
        
        budgetValueLabel.text = "未設定"
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
