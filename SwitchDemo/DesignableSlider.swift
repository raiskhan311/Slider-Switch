//
//  DesignableSlider.swift
//  SwitchDemo
//
//  Created by mac on 15/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableSlider: UISlider {

    @IBInspectable var thumbImage: UIImage?{
        didSet{
                setThumbImage(thumbImage, for: .normal)
        }
    }
    
    @IBInspectable var thumbHighligtedImage: UIImage?{
        didSet{
            setThumbImage(thumbHighligtedImage, for: .highlighted)
        }
    }
}
