//
//  ViewController.swift
//  PageMenuDemoSegmentedControl
//
//  Created by Niklas Fahl on 1/20/15.
//  Copyright (c) 2015 Niklas Fahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pageMenu : CAPSPageMenu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "PAGE MENU"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        // MARK: - Scroll menu setup
        
        // Initialize view controllers to display and place in array
        var controllerArray : [UIViewController] = []
        
        var controller1 : TestTableViewController = TestTableViewController(nibName: "TestTableViewController", bundle: nil)
        controller1.parentNavigationController = self.navigationController
        controller1.title = "FAVORITES"
        controllerArray.append(controller1)
        var controller2 : RecentsTableViewController = RecentsTableViewController(nibName: "RecentsTableViewController", bundle: nil)
        controller2.title = "RECENTS"
        controller2.parentNavigationController = self.navigationController
        controllerArray.append(controller2)
        var controller3 : RecentsTableViewController = RecentsTableViewController(nibName: "RecentsTableViewController", bundle: nil)
        controller3.title = "FRIENDS"
        controller3.parentNavigationController = self.navigationController
        controllerArray.append(controller3)
        var controller4 : RecentsTableViewController = RecentsTableViewController(nibName: "RecentsTableViewController", bundle: nil)
        controller4.title = "OTHERS"
        controller4.parentNavigationController = self.navigationController
        controllerArray.append(controller4)
        
        // Customize menu (Optional)
        var parameters: [String: AnyObject] = ["menuItemSeparatorWidth": 4.3,
                                            "scrollMenuBackgroundColor": UIColor.whiteColor(),
                                                  "viewBackgroundColor": UIColor(red: 247.0/255.0, green: 247.0/255.0, blue: 247.0/255.0, alpha: 1.0),
                                              "bottomMenuHairlineColor": UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 0.1),
                                              "selectionIndicatorColor": UIColor(red: 18.0/255.0, green: 150.0/255.0, blue: 225.0/255.0, alpha: 1.0),
                                                           "menuMargin": 20.0,
                                                           "menuHeight": 40.0,
                                           "selectedMenuItemLabelColor": UIColor(red: 18.0/255.0, green: 150.0/255.0, blue: 225.0/255.0, alpha: 1.0),
                                         "unselectedMenuItemLabelColor": UIColor(red: 40.0/255.0, green: 40.0/255.0, blue: 40.0/255.0, alpha: 1.0),
                                                         "menuItemFont": UIFont(name: "HelveticaNeue-Medium", size: 14.0)!,
                                          "useMenuLikeSegmentedControl": true,
                                          "menuItemSeparatorRoundEdges": true,
                                             "selectionIndicatorHeight": 2.0,
                                    "menuItemSeparatorPercentageHeight": 0.1]
        
        // Initialize scroll menu
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), options: parameters)
        
        self.view.addSubview(pageMenu!.view)
    }
}