//
//  Place.swift
//  IntroSwift
//
//  Created by Moises on 7/14/16.
//  Copyright © 2016 Moises. All rights reserved.
//

import Foundation

class Place{
    var name : String = ""
    var description : String = ""
    
    var lat : Double = 0.0
    var lng : Double = 0.0
    
    //Computed property
    var fullPlace : String { return name + " " + description}
    
    func registerPlace(urlImage: String) -> String{
        var message = ""
        let check = register()
        
        if(check > 1){
            message = "Yes"
        }else{
            message = "No"
        }
        return message
    }
    
    func register() -> Int{
        return 1;
    }
    
}