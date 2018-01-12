//
//  CustomLoadingView.swift
//  ios_gradient_swift
//
//  Created by Julio César Díaz on 1/11/18.
//  Copyright © 2018 Oscar Adauto. All rights reserved.
//

import Foundation
import UIKit

class CustomLoadingView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame);
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!;
    }
    
    public var completeView = 12
    
    func startLoading() {
        
        var uiViewToMove = UIView()
        let cvWidth : CGFloat = self.frame.size.width;
        uiViewToMove = UIView(frame: CGRect.init(origin: CGPoint(x:Int(-cvWidth), y:0), size: CGSize(width: CGFloat(cvWidth), height: self.frame.size.height)))
        
        var gradientLayer: CAGradientLayer!
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = uiViewToMove.bounds
        gradientLayer.startPoint = CGPoint(x: 0.0,y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0,y: 0.5)
        gradientLayer.colors = [
            UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor,
            UIColor(red:0.92, green:0.92, blue:0.92, alpha:1.0).cgColor,
            UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor
        ]
        uiViewToMove.layer.addSublayer(gradientLayer)
        uiViewToMove.clipsToBounds = true;
        
        self.layer.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor;
        self.clipsToBounds = true;
        self.addSubview(uiViewToMove)
        self.sendSubview(toBack: uiViewToMove)
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {
            uiViewToMove.transform = CGAffineTransform.init(translationX: self.frame.size.width + cvWidth, y: 0)
        })
    }
    
    func startLoadingByOpacity(){
        
        self.layer.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor;
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {
            self.layer.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:0.6).cgColor;
        })
        
    }
    
    func startLoadingSyncronized(){
        
        var uiViewToMove = UIView()
        let gradientWidth : CGFloat = 300;
        uiViewToMove = UIView(frame: CGRect.init(origin: CGPoint(x: -(self.frame.origin.x + gradientWidth), y:0), size: CGSize(width: gradientWidth, height: self.frame.size.height)))
        
        var gradientLayer: CAGradientLayer!
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = uiViewToMove.bounds
        gradientLayer.startPoint = CGPoint(x: 0.0,y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0,y: 0.5)
        gradientLayer.colors = [
            UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor,
            UIColor(red:0.92, green:0.92, blue:0.92, alpha:1.0).cgColor,
            UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor
        ]
        uiViewToMove.layer.addSublayer(gradientLayer)
        uiViewToMove.clipsToBounds = true;
        
        self.layer.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor;
        self.clipsToBounds = true;
        self.addSubview(uiViewToMove)
        self.sendSubview(toBack: uiViewToMove)
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat], animations: {
            uiViewToMove.transform = CGAffineTransform.init(translationX: UIScreen.main.bounds.size.width + gradientWidth, y: 0)
        })
    }
}
