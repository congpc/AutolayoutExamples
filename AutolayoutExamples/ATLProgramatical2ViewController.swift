//
//  ATLProgramatical2ViewController.swift
//  AutolayoutExamples
//
//  Created by Pham Chi Cong on 6/11/16.
//  Copyright © 2016 Pham Chi Cong. All rights reserved.
//

import UIKit

class ATLProgramatical2ViewController: ATLBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //1: Left Top
        let leftTopLabel = self.createLabel("1:Left Top", 101, UIColor.greenColor())
        self.view.addSubview(leftTopLabel)
        self.config1LeftTopConstraints(leftTopLabel,50)
        
        //2: Top Edges
        let topEdgesLabel = self.createLabel("2:Top Edges", 102, UIColor.greenColor())
        self.view.addSubview(topEdgesLabel)
        self.config2TopEdgesAndLessThanConstraints(leftTopLabel, topEdgesLabel, 30)
        
        //3: Top Edges
        let leadingAndTrailingLabel = self.createLabel("3:Leading + Trailing Edges", 103, UIColor.greenColor())
        self.view.addSubview(leadingAndTrailingLabel)
        self.config3LeadingAndTrailingConstraints(leftTopLabel, leadingAndTrailingLabel, topEdgesLabel, 40)
        
        //4: Top Edges
        let bottomEdgesLabel = self.createLabel("4:Bottom Edges", 104, UIColor.greenColor())
        self.view.addSubview(bottomEdgesLabel)
        self.config4BottomEdgesConstraints(leftTopLabel, bottomEdgesLabel)
        
        //5: CenterX
        let centerXLabel = self.createLabel("5:CenterX", 105, UIColor.greenColor())
        self.view.addSubview(centerXLabel)
        self.config5CenterXConstraints(centerXLabel, 50, 130, topEdgesLabel)
        
        //6: CenterY + Leading with value
        let centerYLabel = self.createLabel("6:CenterY", 106, UIColor.greenColor())
        self.view.addSubview(centerYLabel)
        self.config6CenterYConstraints(centerYLabel, centerXLabel, leadingAndTrailingLabel)
        
        //7: Baseline
        let baselineLabel = self.createLabel("7:Baseline", 107, UIColor.greenColor())
        self.view.addSubview(baselineLabel)
        self.config7BaselineConstraints(centerXLabel, baselineLabel, bottomEdgesLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
