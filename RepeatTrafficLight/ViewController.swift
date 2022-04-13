//
//  ViewController.swift
//  RepeatTrafficLight
//
//  Created by Сергей Косичкин on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private let offSignal: CGFloat = 0.3
    private let onSignal: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignalView.alpha = offSignal
        yellowSignalView.alpha = offSignal
        greenSignalView.alpha = offSignal
        
        startButton.layer.cornerRadius = 10
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        redSignalView.layer.cornerRadius =
            redSignalView.bounds.size.width / 2
        
        yellowSignalView.layer.cornerRadius =
            yellowSignalView.bounds.size.width / 2
        
        greenSignalView.layer.cornerRadius =
            greenSignalView.bounds.size.width / 2
    }
    
    @IBAction func startButtonPressed() {
        if greenSignalView.alpha == onSignal {
            greenSignalView.alpha = offSignal
            redSignalView.alpha = onSignal
        } else if yellowSignalView.alpha == onSignal {
            yellowSignalView.alpha = offSignal
            greenSignalView.alpha = onSignal
        } else if redSignalView.alpha == onSignal {
            redSignalView.alpha = offSignal
            yellowSignalView.alpha = onSignal
        } else {
            redSignalView.alpha = onSignal
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
}

