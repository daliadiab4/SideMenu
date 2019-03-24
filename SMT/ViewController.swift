//
//  ViewController.swift
//  SMT
//
//  Created by DaliaDiab on 3/19/19.
//  Copyright © 2019 DaliaDiab. All rights reserved.
//

import UIKit
import SideMenu
//https://github.com/jonkykong/SideMenu


public var menuWidth: CGFloat = 240
class ViewController: UIViewController {
 
  

    override func viewDidLoad() {
        super.viewDidLoad()
      setupSideMenu()
   //   self.navigationItem.leftBarButtonItem = UIBarButtonItem(
        let backButton = UIButton(frame: CGRect(x: 30, y: 0, width: 50, height: 10))
       
        backButton.addTarget(self, action: "action:", for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: backButton)


        // Do any additional setup after loading the view, typically from a nib.
    }
    open var isHidden: Bool {
        return presentingViewController == nil
    }
    
    fileprivate func setupSideMenu() {
        SideMenuManager.default.menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "LeftMenuNavigationController") as? UISideMenuNavigationController
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
          SideMenuManager.default.menuAnimationBackgroundColor = UIColor(patternImage: UIImage(named: "bgbottommenu")!)
        
        
       // SideMenuManager.default.menuWidth = 100
      SideMenuManager.default.menuWidth =  view.frame.width
        
       
        
        
        //  SideMenuManager.default.menuAnimationFadeStrength = CGFloat(slider.value)
        
    }
    
  
    
    
    
    @IBAction func showMenu(_ sender: Any) {
        present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
       
    }
  
    
    
    
    
    
    
    
    
    
    

    

}

