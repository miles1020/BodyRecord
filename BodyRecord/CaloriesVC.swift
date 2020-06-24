//
//  CaloriesVC.swift
//  BodyRecord
//
//  Created by HellöM on 2020/6/22.
//  Copyright © 2020 HellöM. All rights reserved.
//

import UIKit

class CaloriesVC: UIViewController {

    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var bodyHeight: UILabel!
    @IBOutlet weak var bodyWeight: UILabel!
    @IBOutlet weak var topView: UIView!
     var setData: Dictionary<String, Any> = [:] {
           didSet {
               iAge = setData["age"] as! Int
               iGender = setData["gander"] as! Int
               iBodyHeight = setData["bodyHight"] as! Double
               iBodyWeight = setData["bodyWidth"] as! Double
               upDate()
           }
       }
       var iAge = 0 {
           didSet {
               age.text = "\(iAge) Y"
           }
       }
       var iGender = 0 {
           didSet {
               if iGender == 0 {
                   gender.text = "女♀"
               } else {
                   gender.text = "男♀"
               }
           }
       }
       var iBodyHeight = 0.0 {
           didSet {
               if iBodyHeight.truncatingRemainder(dividingBy: 1) > 0 {
                   bodyHeight.text = "\(iBodyHeight) cm"
               } else {
                   bodyHeight.text = "\(Int(iBodyHeight)) cm"
               }
           }
       }
       var iBodyWeight = 0.0 {
           didSet {
               if iBodyWeight.truncatingRemainder(dividingBy: 1) > 0 {
                   bodyWeight.text = "\(iBodyWeight) kg"
               } else {
                   bodyWeight.text = "\(Int(iBodyWeight)) kg"
               }
           }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        bodyHeight.layer.addBorder(edge: .right, color: .gray, thickness: 1)
        bodyHeight.layer.addBorder(edge: .left, color: .gray, thickness: 1)
        gender.layer.addBorder(edge: .left, color: .gray, thickness: 1)
    }
    
    func upDate() {
        
        
    }
}
