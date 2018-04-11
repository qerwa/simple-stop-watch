//
//  ViewController.swift
//  simplu stop watch
//
//  Created by D7703_17 on 2018. 4. 9..
//  Copyright © 2018년 박금상. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
      @IBOutlet weak var timeLabel: UILabel!
      var count = 0
      var myTimer = Timer()
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
//            myTimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: { (timer) in
//                  self.updateTime()
//            })
      }

      func updateTime(){
            count = count + 1
            let min = count / 60 / 100
            let sec = (count - (min * 60 * 100)) / 100
            let msec = count - (min * 60 * 100) - (sec * 100)
            timeLabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
}
      @IBAction func St(_ sender: Any) {
            myTimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: { (timer) in
                  self.updateTime()})
            
      }

      @IBAction func Sp(_ sender: Any) {
            myTimer.invalidate()
      }
      
      @IBAction func RE(_ sender: Any) {
            count=0
            timeLabel.text="00:00:00"
      }
}
