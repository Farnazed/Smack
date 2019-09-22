//
//  ChatVc.swift
//  Smack
//
//  Created by farnaz on 2019-09-21.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

class ChatVc: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
    


}
