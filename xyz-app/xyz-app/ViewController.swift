//
//  ViewController.swift
//  xyz-app
//
//  Created by Nicholas Burcin on 10/15/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    
    @IBOutlet weak var yLabel: UILabel!
    
    @IBOutlet weak var zLabel: UILabel!
    
    var motioionManager: CMMotionManager!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motioionManager = CMMotionManager()
        motioionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
    
    }

    func updateLabels(data: CMAccelerometerData?, error: Error?) {
        guard let accelerometerData = data else { return }
        print(accelerometerData)
    }
    

}

