import UIKit

// ДЗ 5 ООП


enum Action {
    
}
 
enum EngineState {
    case isOff, isOn
    
}

protocol Vehicle {
    var hp: Int { get }
    var engineState: EngineState { get set }
    func handel(action: Action)
}

extension Vehicle {
    
    mutating func handleEngine(state: EngineState) {
        self.engineState = state
        
    }
    
}
 
class Car: Vehicle { // вопрос! а дало же тут иницилизировать класс? через init ?

    var enginState: EngineState = .isOff
    var hp: Int = 0
    
    func handel(action: Action) {
        
    }
}
 let car = Car()
car.handleEngine(state: .isOn)
