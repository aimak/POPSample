//
//  SwipeableView.swift
//  PopSample
//
//  Created by Paul Renson on 8/06/14.
//  Copyright (c) 2014 Paul Renson. All rights reserved.
//

import UIKit


class SwipeableView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }

    override func awakeFromNib()  {
        self.backgroundColor = UIColor.redColor();
    }

}
