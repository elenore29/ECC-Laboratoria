//
//  ViewController.swift
//  intro
//
//  Created by Apple Device 11 on 10/5/19.
//  Copyright © 2019 Apple Device 11. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = UIColor.black
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func paper(_ sender: UIButton) {
        let computer = randomSign()
        let user = Sign.paper
        var result = user.compare(computer: computer)
        print(result, computer)
        //myView.backgroundColor = UIColor.yellow
        func state(result: GameState) {
            switch result {
            case .win:
                myView.backgroundColor = UIColor.blue
            case .lose:
                myView.backgroundColor = UIColor.red
            case .draw:
                 myView.backgroundColor = UIColor.yellow
            default:
                myView.backgroundColor = UIColor.black
            }
        }
        state(result: result)
    }
    
    @IBAction func rock(_ sender: UIButton) {
        let computer = randomSign()
        let user = Sign.rock
        var result = user.compare(computer: computer)
        print(result, computer)
        //myView.backgroundColor = UIColor.yellow
        func state(result: GameState) {
            switch result {
            case .win:
                myView.backgroundColor = UIColor.blue
            case .lose:
                myView.backgroundColor = UIColor.red
            case .draw:
                 myView.backgroundColor = UIColor.yellow
            default:
                myView.backgroundColor = UIColor.black
            }
        }
        state(result: result)
    }
    
    
    @IBAction func scissors(_ sender: UIButton) {
        let computer = randomSign()
        let user = Sign.scissors
        var result = user.compare(computer: computer)
        print(result, computer)
        //myView.backgroundColor = UIColor.yellow
        func state(result: GameState) {
            switch result {
            case .win:
                myView.backgroundColor = UIColor.blue
            case .lose:
                myView.backgroundColor = UIColor.red
            case .draw:
                 myView.backgroundColor = UIColor.yellow
            default:
                myView.backgroundColor = UIColor.black
            }
        }
        state(result: result)
    }
}



