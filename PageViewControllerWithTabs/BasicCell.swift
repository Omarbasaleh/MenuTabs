//
//  BasicCell.swift
//  MyPagerCollView
//
//  Created by Leela Prasad on 08/03/18.
//  Copyright © 2018 Leela Prasad. All rights reserved.
//

import UIKit

class BasicCell: UICollectionViewCell {
    
    let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textAlignment = .center
        return lbl
    }()
    
    var indicatorView: UIView!

    override var isSelected: Bool {
        
        didSet{
            UIView.animate(withDuration: 0.30) {
                self.indicatorView.backgroundColor = self.isSelected ? UIColor.blue : UIColor.clear
                self.layoutIfNeeded()
            }
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    
        setupViews()

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = ""
    }
   
    
    
    fileprivate func setupViews(){
        addSubview(titleLabel)
        titleLabel.fillSuperview()
        
        indicatorView = UIView()
        addSubview(indicatorView)
        indicatorView.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
        indicatorView.heightAnchor.constraint(equalToConstant: 3).isActive = true
    }
    
}
