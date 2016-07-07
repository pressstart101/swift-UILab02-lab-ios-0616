//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paintBucketLabel: UIView!
    @IBOutlet weak var firstSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondSegmentedControl: UISegmentedControl!
    // TODO: Set up IB outlets

    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        switch (first, second) {
        case ("red", "red"):
            return "red"
        case ("red", "yellow"):
            return "orange"
        case ("yellow", "red"):
            return "orange"
        case ("red", "blue"):
            return "purple"
        case ("yellow", "yellow"):
            return "yellow"
        case ("yellow", "blue"):
            return "green"
        case ("blue", "blue"):
            return "blue"
        case ("blue", "red"):
            return "purple"
        case ("blue", "yellow"):
            return "green"
        default:
            ""
        }
//        if first == "red" && second == "red" {
//            return "red"
//        }
       // if firstSegmentedControl.selectedSegmentIndex == 0 &&
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        return ""
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        
        let firstSegment = firstSegmentedControl.selectedSegmentIndex
        let secondSegment = secondSegmentedControl.selectedSegmentIndex
        
        switch (firstSegment, secondSegment) {
        case (0, 0):
            paintBucketLabel.paintColorName = mixColors(withFirst: "red", second: "red")
        case (0, 1):
            paintBucketLabel.paintColorName = mixColors(withFirst: "red", second: "yellow")
        case (1, 0):
            paintBucketLabel.paintColorName = mixColors(withFirst: "yellow", second: "red")
        case (0, 2):
            paintBucketLabel.paintColorName = mixColors(withFirst: "red", second: "blue")
        case (1, 1):
            paintBucketLabel.paintColorName = mixColors(withFirst: "yellow", second: "yellow")
        case (1, 2):
            paintBucketLabel.paintColorName = mixColors(withFirst: "yellow", second: "blue")
        case (2, 2):
            paintBucketLabel.paintColorName = mixColors(withFirst: "blue", second: "blue")
        case (2, 0):
            paintBucketLabel.paintColorName = mixColors(withFirst: "blue", second: "red")
        case (2, 1):
            paintBucketLabel.paintColorName = mixColors(withFirst: "blue", second: "yellow")
        default:
            break
        }
       
        
    }
        // TODO: Mix each selected color and set the paint color to the mixed color
    
}
