//
//  ViewController.swift
//  DateTimePicker
//
//  Created by Huong Do on 9/16/16.
//  Copyright © 2016 ichigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var item: UINavigationItem!

    @IBAction func showDateTimePicker(sender: AnyObject) {
        let min = Date()
        let max = Date().addingTimeInterval(60 * 60 * 24 * 4)
        let picker = DateTimePicker.show(minimumDate: min, maximumDate: max)
        picker.highlightColor = UIColor(red: 255.0/255.0, green: 138.0/255.0, blue: 138.0/255.0, alpha: 1)
        picker.darkColor = UIColor.darkGray
        picker.doneButtonTitle = "!! DONE DONE !!"
        picker.todayButtonTitle = "Today"
        picker.is12HourFormat = true
        picker.selectedDate = Date()
        picker.dateFormat = "hh:mm aa dd/MM/YYYY"
//        picker.isDatePickerOnly = true
        picker.completionHandler = { date in
            let formatter = DateFormatter()
            formatter.dateFormat = "hh:mm aa dd/MM/YYYY"
            self.item.title = formatter.string(from: date)
        }
        
    }

}

