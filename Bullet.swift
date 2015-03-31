//
//  Bullet.swift
//  Flight Fight
//
//  Created by asduk on 14-6-7.
//  Copyright (c) 2014年 asduk. All rights reserved.
//

import UIKit

class Bullet: UIView
{
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.frame = CGRectMake(0, 0, 6, 14);
        
        let bulletImg = self.getImageRef(CGPointMake(499, 0));

        var bullet = UIImageView(image: bulletImg);
        
        bullet.center = self.center;
        
        self.addSubview(bullet);
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getImageRef(p:CGPoint!)->UIImage
    {
        var imgRef=CGImageCreateWithImageInRect(UIImage(named:"gameArts")!.CGImage , CGRectMake(p.x, p.y, 6, 14));
        
        var uiImg=UIImage(CGImage: imgRef);
        
        return uiImg!;
    }
}
