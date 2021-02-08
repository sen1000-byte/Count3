//
//  ViewController.swift
//  Count2
//
//  Created by Chihiro Nishiwaki on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var number: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "0"
        number = 0
    }

    @IBAction func add() {
        number += 1
        label.text = String(number)
        judge()
        special()
    }
    
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
        judge()
        special()
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
        judge()
        special()
    }

    func judge() {
        if number >= 10 {
            label.textColor = UIColor.red
        }else if number <= -10{
            label.textColor = UIColor.blue
        }else {
            label.textColor = UIColor.black
        }
    }
    
    func special() {
        switch number {
        case 0:
            label.font = label.font.withSize(30)
        default:
            label.font = label.font.withSize(17)
        }
    }
}

