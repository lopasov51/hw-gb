import UIKit

enum Action {
    case sportCar, truckCar
    
}

enum EngineState {
    case start, stop
}

enum WindowState {
    case open, close
}

enum TrunkState {
    case full, empty
}
struct Car {
    let speed : String
    let doors : String
    var color : String
    let brand : String
    let model : String
    let driveUnit : String
    
    init(speed: Speed, doors: Doors, color: Color, brand: Brand) {
        
    }
}
    
func changeColor(c:String) {
        switch c {
        case "black": break
        case "yellou": break
        case "white": break
        case "blue": break
        default:
           print("Input error.")
            
        }

    
        func handleAction(_ action: Action) {}
            
                }
    class SportCar {
        let brand : String = "Ford"
        let model : String = "Mustang"
        var color : String = "Blue"
        let speed : String = "350km"
        let doors : String = "2"
        let driveUnit : String = "rear"
        let release : String = "1976"

    func handleAction(_ action: Action) {
            
        init(brand: Ford, model: Mustand  ) {
        
            }
        }
    }
    
class TruckCar {
        let brand : String = "Ram"
        let model : String = "1500"
        var color : String = "Red"
        let speed : String = "300km"
        let doors : String = "4"
        let driveUnit : String = "4x4"
        let release : String = "2019"
        func handleAction(_ action: Action) {
            init(brand: Ram, model: 1500) {
            
            }
        }

    }

    var SportCar = Car(brand: "Ford", model: "mustang", color: "blue", release: 1976)

    var TruckCar = Car(brand: "Ram", model: "1500", color: "REd", release: 2018)


    func SportCar; EngineState = .start{
    SportCar.trunkVolume = 340.0
    SportCar.changeColor(c: "red")
    }
    
    func TruckCar; EngineState = .stop {
    TruckCar.windowState = .close
    TruckCar.bodyVolume = 1500.0
    }

//  я вилимо пошел куда то не туда и потерял нить !!! (((( куча ошибок , и в конце надо сделать Print но не совее понял что именно выввести из за ошибок

    print (SportCar.brand: "Ford")
    

