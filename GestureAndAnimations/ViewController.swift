//
//  ViewController.swift
//  GestureAndAnimations
//
//  Created by Edgar on 2023-03-15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        //print("moving")
        guard let viewToPan = sender.view else {return}
        
        let translation = sender.translation(in: self.view)
        
        viewToPan.center = CGPoint(x: viewToPan.center.x + translation.x, y: viewToPan.center.y + translation.y)
        
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @IBAction func catTapped(_ sender: UITapGestureRecognizer) {
        print("cat tapped")
    }
}

