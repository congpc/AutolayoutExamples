//
//  ATLProgramatical3ViewController.swift
//  AutolayoutExamples
//
//  Created by Pham Chi Cong on 6/26/16.
//  Copyright © 2016 Pham Chi Cong. All rights reserved.
//

import UIKit

class ATLProgramatical3ViewController: ATLBaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Ratio 1:1
        var ratio11Label = self.createLabel("1:1", 101, UIColor.yellowColor())
        if constaintType == 2 {
            ratio11Label = self.createLabel("1:1", 101, UIColor.yellowColor())
        }
        self.view.addSubview(ratio11Label)
        
        //Ratio 2:3
        var ratio23Label = self.createLabel("2:3", 102, UIColor.greenColor())
        if constaintType == 2 {
            ratio23Label = self.createLabel("2:3", 102, UIColor.orangeColor())
        }
        self.view.addSubview(ratio23Label)
        
        self.configRatioConstraints(ratio11Label)
        self.configRatioWithEqualWidthsHeightsConstraints(ratio11Label, ratio23Label)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
