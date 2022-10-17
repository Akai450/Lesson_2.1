import Foundation

class Cat {
    var name = ""
    var age = Int()
    var nameOfPar = ""
    
    init(name: String, age: Int, nameOfPar: String) {
        if name == "" || Int(name) != nil {
            self.name = "Имя отсутствует"
        } else {
            self.name = name
        }
        self.age = age
        self.nameOfPar = nameOfPar
    }
    init() {
    }
    
    func say() {
        print ("Меня зовут \(name)\nмне \(age) год\nмоего хозяина зовут\(nameOfPar)")
    }
}

var cat1 = Cat (name: "Барсик", age: 1, nameOfPar:"Вася")
var cat2 = Cat (name: "Арсений", age: 1, nameOfPar:"Саша")
var cat3 = Cat (name: "Русик", age: 1, nameOfPar:"Антон")

cat1.say()
cat2.say()
cat3.say()

//dump() - выводит в консоль объект в упорядоченном виде
