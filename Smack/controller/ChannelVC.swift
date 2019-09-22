//
//  ChannelVC.swift
//  Smack
//
//  Created by farnaz on 2019-09-21.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 80
    }
    


}
