//
//  URL.swift
//
//  Created by Chanh Nguyen on 1/22/17.
//  Copyright © 2017 Stanford University. All rights reserved.
//

import Foundation

struct DemoURL
{
    static let Metropolia = "http://amies-2012.metropolia.fi/assets/IMG_1073.jpg"

    static let NASA = [
        "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
    ]
    
    static func NASAImageNamed(_ imageName: String?) -> URL? {
        if let urlstring = NASA[imageName ?? ""] {
            return URL(string: urlstring)
        } else {
            return nil
        }
    }
}
