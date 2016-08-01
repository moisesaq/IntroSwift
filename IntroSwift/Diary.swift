//
//  Operation.swift
//  IntroSwift
//
//  Created by Moises on 8/1/16.
//  Copyright © 2016 Moises. All rights reserved.
//

import Foundation

struct Contact{
    var name: String
    var lastname: String
    var phone: Int
    var email: String
    
    init(name:String, lastname:String){
        self.init(name:name, lastname:lastname, phone:0, email:"")
    }
    
    init(name: String, lastname: String, phone: Int, email: String){
        self.name = name
        self.lastname = lastname
        self.phone = phone
        self.email = email
    }
    
    func getInformation() -> String?{
        return "Information \(name) \(lastname)"
    }
    
    func getDomainEmail() -> String?{
        if let pos = email.rangeOfString("@"){
            return email.substringFromIndex(pos.endIndex)
        }
        return nil
    }
    
    mutating func changeDomainEmail(newDomain: String) -> String{
        if let pos = email.rangeOfString("@"){
            email = email.substringToIndex(pos.endIndex) + newDomain
        }
        return email
    }
}