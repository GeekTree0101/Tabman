//
//  Bar.swift
//  Tabman
//
//  Created by Merrick Sapsford on 28/05/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit
import SnapKit
import Pageboy

public protocol BarDataSource: class {
    
    func barItem(for tabViewController: TabmanViewController, at index: Int) -> BarItem?
}

public protocol BarDelegate: class {
    
    func bar(_ bar: Bar,
             didRequestScrollToPageAt index: PageboyViewController.PageIndex)
}

public protocol Bar: AnyObject where Self: UIView {
    
    var dataSource: BarDataSource? { get set }
    var delegate: BarDelegate? { get set }
    
    // Data Source
    func reloadData(for tabViewController: TabmanViewController)
    
    // Updating
    func update(for pagePosition: CGFloat,
                capacity: Int,
                direction: PageboyViewController.NavigationDirection)
}
