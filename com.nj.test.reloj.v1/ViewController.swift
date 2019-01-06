//
//  ViewController.swift
//  com.nj.test.reloj.v1
//
//  Created by Nestor Cortés on 05-01-19.
//  Copyright © 2019 Nestor Cortés. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHora: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mostrarHora()
        
    let contentTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }

    @objc func update() {
        mostrarHora()
    }
    
    func mostrarHora() {
        // here is the label to refresh
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        
        
        var strDay:String = ""
        var strMonth:String = ""
        let strYear:String = String(year)
        var strHour:String = ""
        var strMinute:String = ""
        var strSecond:String = ""
        
        
        //Forma 1 de anteponer un cero
        if day < 10{
            strDay = "0" + String(day)
        }else{
            strDay = String(day)
        }
        
        //Forma 2 de anteponer un cero
        strMonth = String(format: "%02d", month)
        strHour = String(format: "%02d", hour)
        strMinute = String(format: "%02d", minute)
        strSecond = String(format: "%02d", second)
        
        self.lblHora.text = strDay + "-" + strMonth + "-" + strYear + " " + strHour + ":" + strMinute+":"+strSecond;
    }
    
}

