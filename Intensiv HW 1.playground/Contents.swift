import UIKit

// 1 Closure

// typealias VoidClosure = () -> Void
//(1)

let functionGoIn = {return true}
functionGoIn()

//(2)

func isPlus(value: Int) -> Bool {
    if value < 0 {
        return false
    } else {
        return true
    }
}
print(isPlus)
//
//
// Optional...

var optString: String? = "Ilya Selivanov"
var unwrappString = optString!
print("My name is \(unwrappString)")


//
// template ...
//


protocol BasicStrategy {
    
    func actionHero1()
    func actionHero2()
}

// class atack

class AttackStrategy: BasicStrategy {
    
    func actionHero1() {
        
        print("Герой 1 - атакуй всех врагов")
    }
    
    func actionHero2() {
        
        print("Герой 2 - атакуй всех врагов")
    }
}


class DefenceStrategy: BasicStrategy {
    
    func actionHero1() {
        
        print("Герой 1 - атакуй всех врагов")
    }
    
    func actionHero2() {
        print("Герой 2 - Лечи героя 1")
    }
}

class Player {
    var strategy: BasicStrategy
    
    func makeAction() {
        self.strategy.actionHero1()
        self.strategy.actionHero2()
    }
    
    func changeStrategy(aStrategy: BasicStrategy) {
        self.strategy = aStrategy
    }
    
    init(strategy: BasicStrategy) {
        self.strategy = strategy
    }
}

let a = AttackStrategy()
let d = DefenceStrategy()
let p = Player(strategy: a)
let v = Player(strategy: d)
p.makeAction()
v.makeAction()
