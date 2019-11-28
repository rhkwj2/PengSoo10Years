//
//  DatePickerViewController.swift
//  PengSoo10Years
//
//  Created by Kim Yeon Jeong on 2019/11/20.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

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

    @IBOutlet weak var pensooImageView: UIImageView!
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
//        print(sender.date)
        let datePickerDate = sender.date
        
        
//        let date = Date()
//        let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: date)
//        let weekday = dateComponents.weekday!
//        let month = dateComponents.month!
        
        let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: datePickerDate)
        let dayNumber: Int = dateComponents.day!
        print("dayNumber : \(dayNumber)")
        let imageIndex = dayNumber % 9 + 1
        print("imageIndex: \(imageIndex)")
        
    
        
//        dateComponents = dateComponentsImageView
        let imageNamePrefix = "펭수"
        let imageNameSuffix = String(imageIndex)
        
        let imageName = imageNamePrefix + imageNameSuffix
        let image = UIImage(named: imageName)
        pensooImageView.image = image
    }
}
