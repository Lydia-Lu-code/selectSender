//
//  ViewController.swift
//  select.Any.sender
//
//  Created by 維衣 on 2020/6/29.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var womanOrMan: UISegmentedControl!
    @IBOutlet weak var samesexOrNot: UISegmentedControl!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var skillSwitch: UISwitch!
    @IBOutlet weak var haveLabel: UILabel!
    @IBOutlet weak var skillTextField: UITextField!
    @IBOutlet weak var childSwitch: UISwitch!
    @IBOutlet weak var childStepper: UIStepper!
    @IBOutlet weak var sayLabel: UILabel!
    
    var select1WoM = ""
    var select2Sex = ""
    var select3H = ""
    var height: Int = 0
    var select4W = ""
    var weight: Int = 0
    var select5Skill = ""
    var skillWord = ""
    var select6Cash = ""
    var cashWord = ""
    var result = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func select1GOB(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            select1WoM = "woman"
        }else if sender.selectedSegmentIndex == 1 {
            select1WoM = "Man"
        }
    }
    
    @IBAction func select2Sex(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            select2Sex = "sameSex"
        }else if sender.selectedSegmentIndex == 1 {
            select2Sex = "differentSex"
        }
    }
    
    @IBAction func select3H(_ sender: UISlider) {
        sender.value.round()
        heightLabel.text! = Int(sender.value).description

        switch select1WoM {
        case "woman":
            if weight <= 160 {
               select3H = "很可愛！"
            }else if weight >= 161 && weight <= 180 {
                select3H = "身高速配！"
            }else if weight >= 181 {
                select3H = "你喜歡就可以。"
            }
            
        case "man":
            if weight <= 170 {
                select3H = "這身高會有點擔心，能保護好我女兒嗎？"
            }else if weight >= 171 {
                select3H = "這身高，還不錯！"
        }
        
        default:
             break
             }
    }
    
    @IBAction func select4W(_ sender: UISlider) {
        sender.value.round()
        //weightLabel.text! = Int(sender.value).description

        switch select1WoM {
            case "woman":
                switch Int(sender.value) {
                    case 0:
                    weightLabel.text = "纖細"
                    case 1:
                    weightLabel.text = "正常"
                    case 2:
                    weightLabel.text = "健康體態"
                    case 3:
                    weightLabel.text = "健美健康"
                    case 4:
                    weightLabel.text = "可愛肉感"
                    default:
                        break
                    }
                     
            case "man":
                switch sender.value {
                    case 0:
                    weightLabel.text = "乾扁"
                    case 1:
                    weightLabel.text = "正常"
                    case 2:
                    weightLabel.text = "健美"
                    case 3:
                    weightLabel.text = "肉感健美"
                    case 4:
                    weightLabel.text = "龍柱"
                    default:
                        break
                    }
                    
            default:
                break
            }

        //娶媳婦
        //纖細＞正常＞健康體態＞健美健康＞可愛肉感

        //挑女婿
        //乾扁＞正常＞健美＞肉感健美＞龍柱

        if select1WoM == "woman" {
            select4W = "跑得起來就好，我的女兒很活潑、很動態！"
            }else if select1WoM == "man" {
            select4W = "跑得起來就好，我的兒子很活潑、很動態！"
            }
    }
    
    @IBAction func select5Skill(_ sender: UISwitch) {
        if sender.isOn == true {    // 判斷使用者選擇是開還是關
            haveLabel.text = "有"
            skillTextField.isHidden = false
                //SwitchOn
            let skillWord = skillTextField.text!
            if skillWord != "" {
                select5Skill = "很有上進心、很好"
            }else {
                skillTextField.placeholder = "專長是?"
            }
                
        }else {
            haveLabel.text = "沒有"
            //SwitchOff
            select5Skill = "這樣我會有點擔心！"
        }

        
    }
    
    
    
    


}

