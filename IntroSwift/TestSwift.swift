//
//  TestSwift.swift
//  IntroSwift
//
//  Created by Moises on 7/25/16.
//  Copyright © 2016 Moises. All rights reserved.
//

import Foundation

class TestSwift{
    
    func testTupla() -> String{
        let film = ("Thor", 2013)
        return "\(film.0) : \(film.1)"
    }
    
    func testTupla2() -> String{
        let film = (movie:"Transilvania 2", year:2015)
        return  "\(film.movie) -> \(film.year)"
    }
    
    func testTupla3Practico(x: Int, y: Int) -> String{
        var result:String
        let center = (100, 160)
        let coordenade = (x, y)
        
        switch coordenade {
        case (0,0):
            result = "Point 0";
        case (0, _):
            result = "Left";
        case (_, 0):
            result = "Bottom";
        case let(x, y) where x == y:
            result = "Is diagonal";
        case let(x,y) where x == center.0 && y == center.1:
            result = "In center";
        case (center.0-2...center.0+2, center.1-2...center.1+2):
            result = "Near center"
        default:
            result = "Error"
        }
        
        return result
    }
}