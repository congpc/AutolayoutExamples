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
        var leftTopLabel = self.createLabel("1:Left Top", 101, UIColor.greenColor())
        if constaintType == 1 {
            leftTopLabel = self.createLabel("1:Left Top", 101, UIColor.brownColor())
        }
        else if constaintType == 2 {
            leftTopLabel = self.createLabel("1:Left Top", 101, UIColor.orangeColor())
        }
        self.view.addSubview(leftTopLabel)
        
        //2: Top Edges
        var topEdgesLabel = self.createLabel("2:Top Edges", 102, UIColor.greenColor())
        if constaintType == 1 {
            topEdgesLabel = self.createLabel("2:Top Edges", 102, UIColor.brownColor())
        }
        else if constaintType == 2 {
            topEdgesLabel = self.createLabel("2:Top Edges", 102, UIColor.orangeColor())
        }
        self.view.addSubview(topEdgesLabel)
        
        //3: Top Edges
        var leadingAndTrailingLabel = self.createLabel("3:Leading + Trailing Edges", 103, UIColor.greenColor())
        if constaintType == 1 {
            leadingAndTrailingLabel = self.createLabel("3:Leading + Trailing Edges", 103, UIColor.brownColor())
        }
        else if constaintType == 2 {
            leadingAndTrailingLabel = self.createLabel("3:Leading + Trailing Edges", 103, UIColor.orangeColor())
        }
        self.view.addSubview(leadingAndTrailingLabel)
        
        //4: Top Edges
        var bottomEdgesLabel = self.createLabel("4:Bottom Edges", 104, UIColor.greenColor())
        if constaintType == 1 {
            bottomEdgesLabel = self.createLabel("4:Bottom Edges", 104, UIColor.brownColor())
        }
        else if constaintType == 2 {
            bottomEdgesLabel = self.createLabel("4:Bottom Edges", 104, UIColor.orangeColor())
        }
        self.view.addSubview(bottomEdgesLabel)
        
        //5: CenterX
        var centerXLabel = self.createLabel("5:CenterX", 105, UIColor.greenColor())
        if constaintType == 1 {
            centerXLabel = self.createLabel("5:CenterX", 105, UIColor.brownColor())
        }
        else if constaintType == 2 {
            centerXLabel = self.createLabel("5:CenterX", 105, UIColor.orangeColor())
        }
        self.view.addSubview(centerXLabel)
        
        //6: CenterY + Leading with value
        var centerYLabel = self.createLabel("6:CenterY", 106, UIColor.greenColor())
        if constaintType == 1 {
            centerYLabel = self.createLabel("6:CenterY", 106, UIColor.brownColor())
        }
        else if constaintType == 2 {
            centerYLabel = self.createLabel("6:CenterY", 106, UIColor.orangeColor())
        }
        self.view.addSubview(centerYLabel)
        
        //7: Baseline
        var baselineLabel = self.createLabel("7:Baseline", 107, UIColor.greenColor())
        if constaintType == 1 {
            baselineLabel = self.createLabel("7:Baseline", 107, UIColor.brownColor())
        }
        else if constaintType == 2 {
            baselineLabel = self.createLabel("7:Baseline", 107, UIColor.orangeColor())
        }
        self.view.addSubview(baselineLabel)
        
        //Config constraints
        self.config1LeftTopConstraints(leftTopLabel,50)
        self.config2TopEdgesAndLessThanConstraints(leftTopLabel, topEdgesLabel, 30)
        self.config3LeadingAndTrailingConstraints(leftTopLabel, leadingAndTrailingLabel, topEdgesLabel, 40)
        self.config4BottomEdgesConstraints(leftTopLabel, bottomEdgesLabel)
        self.config5CenterXConstraints(centerXLabel, 50, 130, topEdgesLabel)
        self.config6CenterYConstraints(centerYLabel, centerXLabel, leadingAndTrailingLabel)
        self.config7BaselineConstraints(centerXLabel, baselineLabel, bottomEdgesLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
