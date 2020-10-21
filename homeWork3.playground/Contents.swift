import UIKit

enum engineState {
    case start, stop
}

enum windowState {
    case open, close
}

enum trunkState {
    case full, empty
}

struct someCar {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "black":
            self.color = "black"
        case "yellou":
            self.color = "yellou"
        case "white":
            self.color = "white"
        case "blue":
            self.color = "blue"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brand)\(model) trunk free: \(space)")
            } else { print("Input error or \(brand)\(model) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brand)\(model) engine is on")
            } else {print("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) windows are open")
            } else { print("\(brand)\(model) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) trunck is empty")
    }
}

struct someTruck {
    let brand : String
    let model : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "black":
            self.color = "black"
        case "yellou":
            self.color = "yellou"
        case "white":
            self.color = "white"
        case "blue":
            self.color = "blue"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var bodyVolume : Double {
        willSet {
            if (trunkState == .empty) && (bodyVolume > 0) && (bodyVolume != 0) && (newValue < bodyVolume) {
                let space = bodyVolume - newValue
                print ("\(brand)\(model) trunk free: \(space)")
            } else { print("Input error or \(brand)\(model) trunk is full.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brand)\(model) engine is on")
            } else {print("\(brand)\(model) engine is off")}
        }
    }
    var windowState : windowState {
        willSet {
            if newValue == .open {
                print("\(brand)\(model) windows are open")
            } else { print("\(brand)\(model) windows are close") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brand)\(model) trunck is empty")
    }
}

var car1 = someCar(brand: "Ford", model: "mustang", color: "blue", release: 1976, trunkVolume: 280.0 , engineState: .stop, windowState: .open, trunkState: .empty)

var truck1 = someTruck(brand: "Dodge Ram", model: "1500", color: "clear", release: 2018, bodyVolume: 1500.0, engineState: .start, windowState: .open, trunkState: .full)


car1.engineState = .start
car1.trunkVolume = 340.0
car1.changeColor(c: "red")

truck1.engineState = .stop
truck1.windowState = .close
truck1.bodyVolume = 1500.0

print ("Information about the first car: brand&model: \(car1.brand)\(car1.model), release: \(car1.release), color: \(String(describing: car1.color)), free trunkVolume: \(car1.trunkVolume), engine is \(car1.engineState)")

print ("Information about the first car: brand&model: \(truck1.brand)\(truck1.model), release: \(truck1.release), color: \(String(describing: truck1.color)), free bodyVolume: \(truck1.bodyVolume), engine is \(truck1.engineState)")


