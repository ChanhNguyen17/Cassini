//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Chanh Nguyen on 1/22/17.
//  Copyright © 2017 Stanford University. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    
    private struct Storyboard {
        static let ShowImageSegue = "Show Image"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Storyboard.ShowImageSegue {
            if let ivc = segue.destination.contentViewController as? ImageViewController {
                let imageName = (sender as? UIButton)?.currentTitle
                ivc.imageURL = DemoURL.NASAImageNamed(imageName) as NSURL?
                ivc.title = imageName
            }
        }
    }
}

extension UIViewController {
    var contentViewController: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
