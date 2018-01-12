//
//  ViewController.swift
//  ios_gradient_swift
//
//  Created by Julio César Díaz on 1/10/18.
//  Copyright © 2018 Oscar Adauto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: CustomLoadingView!
    @IBOutlet weak var view2: CustomLoadingView!
    @IBOutlet weak var vie3: CustomLoadingView!
    @IBOutlet weak var view4: CustomLoadingView!
    @IBOutlet weak var view5: CustomLoadingView!
    @IBOutlet weak var view6: CustomLoadingView!
    @IBOutlet weak var view7: CustomLoadingView!
    
    @IBOutlet weak var view11: CustomLoadingView!
    @IBOutlet weak var view22: CustomLoadingView!
    @IBOutlet weak var view33: CustomLoadingView!
    @IBOutlet weak var view44: CustomLoadingView!
    @IBOutlet weak var view55: CustomLoadingView!
    
    @IBOutlet weak var view111: CustomLoadingView!
    @IBOutlet weak var view222: CustomLoadingView!
    @IBOutlet weak var view333: CustomLoadingView!
    @IBOutlet weak var view444: CustomLoadingView!
    
    @IBOutlet weak var view1111: CustomLoadingView!
    @IBOutlet weak var view2222: CustomLoadingView!
    @IBOutlet weak var view3333: CustomLoadingView!
    @IBOutlet weak var view4444: CustomLoadingView!
    @IBOutlet weak var view5555: CustomLoadingView!
    @IBOutlet weak var view6666: CustomLoadingView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTag)))
    }
    
    @objc func handleTag(){
        view1.startLoading()
        view2.startLoading()
        vie3.startLoading()
        view4.startLoading()
        view5.startLoading()
        view6.startLoading()
        view7.startLoading()
        
        view11.startLoadingSyncronized()
        view22.startLoadingSyncronized()
        view22.startLoadingSyncronized()
        view33.startLoadingSyncronized()
        view44.startLoadingSyncronized()
        view55.startLoadingSyncronized()
        
        view1111.layer.cornerRadius = view1111.layer.bounds.size.width / 2;
        view1111.clipsToBounds = true
        
        view1111.startLoadingSyncronized();
        view2222.startLoadingSyncronized();
        view3333.startLoadingSyncronized();
        view4444.startLoadingSyncronized();
        view5555.startLoadingSyncronized();
        view6666.startLoadingSyncronized();
        
        view111.startLoadingByOpacity()
        view222.startLoadingByOpacity()
        view333.startLoadingByOpacity()
        view444.startLoadingByOpacity()
    }

}


