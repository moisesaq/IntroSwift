//
//  TestSwift.swift
//  IntroSwift
//
//  Created by Moises on 7/25/16.
//  Copyright © 2016 Moises. All rights reserved.
//

import Foundation

class TestSwift{
    var result:String = ""
    
    /*--------------------SECTION TEST TUPLE--------------------*/
    func testTupla() -> String{
        let film = ("Thor", 2013)
        return "\(film.0) : \(film.1)"
    }
    
    func testTupla2() -> String{
        let film = (movie:"Transilvania 2", year:2015)
        return  "\(film.movie) -> \(film.year)"
    }
    
    func testTupla3Practico(x: Int, y: Int) -> String{
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
    /*----------------------SECTION TES ENUM----------------*/
    /*enum wheels{
        case una, dos, tres, cuatro
    }*/
    
    enum wheels:Int{
        case una = 1, dos = 2, tres = 3, cuatro = 4
        //NOTE: Or case una = 1, dos, tres, cuartro
    }
    
    enum ModelCar:String{
        case toyota, ford, audi, nissan
    }
    
    func testEnum1(numRuedas: wheels) -> String{
        switch numRuedas {
        case .una:
            result = "Unicycle \(wheels.una.rawValue)";
        case .dos:
            result = "Moped \(wheels.dos.rawValue)";
        case .tres:
            result = "Tricycle \(wheels.tres.rawValue)";
        case .cuatro:
            result = "Car \(wheels.cuatro.rawValue)";
        }
        return result
    }
    
    func testEnum2(favModel: ModelCar) -> String{
        switch favModel{
        case .toyota:
            result = "Your favorite is \(ModelCar.toyota.rawValue)";
        case .ford:
            result = "Your favorite is \(ModelCar.ford.rawValue)";
        case .audi:
            result = "Your favorite is \(ModelCar.audi.rawValue)";
        case .nissan:
            result = "Your favorite is \(ModelCar.nissan.rawValue)";
        }
        return result
    }
    
    enum Snock{
        case snockSmall(Int)
        case snockMedium(Int)
        case snockLarge(Int)
        case snockMortal
    }
    
    class Weapon{
        var typeSnock: Snock?
    }
    
    class Character{
        var life = 100
        var strength = 100
    }
    
    func testEnum3(points: Int) -> String{
        let word = Weapon()
        word.typeSnock = .snockMedium(points)
        
        let fighter = Character()
        
        switch word.typeSnock! {
        case .snockSmall(let points):
            fighter.life -= points
        case .snockMedium(let points):
            fighter.life -= points*2
        case .snockLarge(let points):
            fighter.life -= points*2
        case .snockMortal:
            fighter.life = 0
        }
        result = "Life of fighter: \(fighter.life)"
        return result
    }
    

    
}