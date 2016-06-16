//
//  ATLProgramatical1ViewController.swift
//  AutolayoutExamples
//
//  Created by Pham Chi Cong on 6/5/16.
//  Copyright © 2016 Pham Chi Cong. All rights reserved.
//

import UIKit

class ATLProgramatical1ViewController: ATLBaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        //1
        self.createLeftTopLabel()
        self.createLeftBottomLabel()
        self.createRightTopLabel()
        self.createRightBottomLabel()
        
        //2
        self.createLeftCenterYLabel()
        self.createCenterXTopLabel()
        self.createRightCenterYLabel()
        self.createCenterXBottomLabel()
        self.createCenterLabel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Corner pins
    func createLeftTopLabel() {
        //Create label
        let label = self.createLabel("Left Top", 101, UIColor.greenColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configLeftTopConstraints(label)
    }
    
    func createRightTopLabel() {
        //Create label
        let label = self.createLabel("Right Top", 102, UIColor.greenColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configRightTopConstraints(label)
    }
    
    func createRightBottomLabel() {
        //Create label
        let label = self.createLabel("Right Bottom", 103, UIColor.greenColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configRightBottomConstraints(label)
    }
    
    func createLeftBottomLabel() {
        //Create label
        let label = self.createLabel("Left Bottom", 104, UIColor.greenColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configLeftBottomConstraints(label)
    }
    
    //MARK: - Center pins
    func createLeftCenterYLabel() {
        //Create label
        let label = self.createLabel("Left CenterY", 105, UIColor.yellowColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configLeftCenterYConstraints(label)
    }
    func createCenterXTopLabel() {
        //Create label
        let label = self.createLabel("CenterX Top", 106, UIColor.yellowColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configCenterXTopConstraints(label)
    }
    
    
    func createRightCenterYLabel() {
        //Create label
        let label = self.createLabel("Right CenterY", 107, UIColor.yellowColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configRightCenterYConstraints(label)
    }
    func createCenterXBottomLabel() {
        //Create label
        let label = self.createLabel("CenterX Bottom", 108, UIColor.yellowColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configCenterXBottomConstraints(label)
    }
    
    func createCenterLabel() {
        //Create label
        let label = self.createLabel("Center", 109, UIColor.magentaColor())
        self.view.addSubview(label)
        
        //Config constraints
        self.configCenterConstraints(label)
    }
}

