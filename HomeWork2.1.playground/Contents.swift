import UIKit

//1. Написать функцию, которая определяет, четное число или нет
var numberArray = [55, 72, 19, 61, 36, 93, 26, 69]
for sorting in numberArray{
if sorting % 2 == 0 {
print("\(sorting) четное число")
    } else {
print("\(sorting) нечетное число")
    }
}


//2. Написать функцию, которая определит делится ли число без остатка на 3.
for sortingTwo in numberArray{
if sortingTwo % 3 == 0 {
print("\(sortingTwo) делится на 3 без остатка")
    } else {
print("\(sortingTwo) делится на 3 с остатком")
    }
}


//3. Создать возврастающий массив из 100 чисел.
var oneHundred: Array<Int> = []
for i in 1...100{
    oneHundred.append(i)
}
print(oneHundred)
  

//4. Удалить из этого массива все четные числа и все числа и числа  которые не делятся на 3.
var toDelete = oneHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
print(toDelete)


//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов. Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2

func fibonacciArray(_ n: Int) -> [Double] {
var fibonacci: [Double] = [1, 1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
return fibonacci
}
print(fibonacciArray(100))



//6. Заполнить массив из 100 элементов различными простыми числами.
// Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.
// Для нахождения всех простых чисел, не больше заданного числа n, следуя методу Эратосфена,
// нужно выполнить следующие шаги:

//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
var primeNumbers = [Int](2...100)

//b. Пусть переменная p изначально равна двум — первому простому числу.
var p = 2

//e. Повторять шаги c и d, пока возможно.
while p != 0 {

    //с. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа кратные p: 2p, 3p, 4p, ...).
    for i in 2...100 {
        if let index = primeNumbers.firstIndex(of: (i * p)) {
            primeNumbers.remove(at: index)
        }
    }

    //d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
    if let index = primeNumbers.firstIndex(of: p), index != (primeNumbers.endIndex - 1) {
        p = primeNumbers[index + 1]
    } else {
        p = 0
    }
}

print(primeNumbers)
