//
//  ViewController.swift
//  TimerApplication
//
//  Created by user on 16/06/22.
//

import UIKit

var timer = Timer()
var second = 60
class ViewController: UIViewController
{
    
    @IBOutlet var labelTime: UILabel!
    @IBOutlet var startButton: UIButton!
    @IBOutlet var pauseButton: UIButton!
    @IBOutlet var reset: UIButton!
    @IBOutlet var addSecond: UIButton!
    @IBOutlet var minusSecond: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    @IBAction func startButton(_ sender: Any) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: Any) {

        timer.invalidate()
        labelTime.text = String (second)
    
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        second =  60
        timer.invalidate()
       
    }
    
    @IBAction func addSecond(_ sender: Any) {
        second = second + 5
        labelTime.text = String (second)
    }
    
    
    @IBAction func minusSecond(_ sender: Any) {
        second = second - 5
        labelTime.text = String (second)
        if (second == 0) {
            timer.invalidate()
            second = 60
        }
    }
    
    
    @objc func timerFunc(){
        second-=1
        labelTime.text = String (second)
        
        if (second == 0) {
            timer.invalidate()
            second = 60
        }
        
    }
    

}

