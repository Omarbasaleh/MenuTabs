//
//  ContentVC.swift
//  PageViewControllerWithTabs
//
//  Created by Leela Prasad on 22/03/18.
//  Copyright © 2018 Leela Prasad. All rights reserved.
//

import UIKit


class ContentViewController: UIViewController {
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    var pageIndex: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nameLabel)
        nameLabel.fillSuperview()
    }

}
