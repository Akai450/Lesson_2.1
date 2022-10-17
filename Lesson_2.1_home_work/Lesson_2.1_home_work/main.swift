import Foundation
/*
 1. Создать класс "Машина"(Car) и задать ему свойства
 Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)
 */
class myCar {
    var name = ""
    var model = ""
    var releaseDate = Int()
    var color = ""
    var engine = Double()
    var power = Int()
    var acceleration = Double()

    init(name: String, model: String, releaseDate: Int, color: String, engineVolume: Double, power: Int, acceleration: Double) {
        self.name = name
        self.model = model
        self.releaseDate = releaseDate
        self.color = color
        self.engine = engineVolume
        self.power = power
        self.acceleration = acceleration
    }
    //    init() {
    //    }
    //Функция увеличивает количество лошадинных сил и уменьшает время разгона от 0 до 100
    func powerIncrease() {
        power += 50
        acceleration -= 0.5
        print ("Марка: \(name)\nМодель: \(model)\nДата выпуска: \(releaseDate)\nЦвет: \(color)\nОбъем двигателя: \(engine)\nМощность: \(power) л.с.\nРазгон от 0 до 100: \(acceleration) секунд")
    }
}

var car = myCar (name: "Toyota", model: "Camry SE", releaseDate: 2010, color: "Красный", engineVolume: 2.5, power: 100, acceleration: 10)
car.powerIncrease()
/*
 2. Создать класс "Магазин" и "Продукт" и задать им свойства
 Также создать функцию добавления продукта в магазин и отображения товаров в магазине
 */
class myProducts {
    var productName = ""
    var cost = Int()

    init(productName: String, cost: Int) {
        self.productName = productName
        self.cost = cost
    }
}

var milk = myProducts(productName: "Молоко", cost: 100)
var bread = myProducts(productName: "Хлеб", cost: 50)
var butter = myProducts(productName: "Масло", cost: 100)
var meat = myProducts(productName: "Мясо", cost: 600)
var eggs = myProducts(productName: "Яйца", cost: 120)

class myMarket {
    var name = ""
    var location = ""
    var countOfPersonal = 100
    var productsInMarket: [myProducts] = []

    init (name: String, location: String, countOfPersonal: Int) {
        self.name = name
        self.location = location
        self.countOfPersonal = countOfPersonal
    }

    func addProductsInMarket() {
        productsInMarket.append(milk)
        productsInMarket.append(bread)
        productsInMarket.append(butter)
        productsInMarket.append(meat)
        productsInMarket.append(eggs)
        print ("Гипермаркет \(name)\nАдрес: \(location)\nКоличество рабочего персонала: \(countOfPersonal) человек\nТовары в магазине:\n")
        dump (productsInMarket)
        print("И много других товаров")
    }
}
var market = myMarket(name: "Globus", location: "Токомбаева, 53/1", countOfPersonal: 100)
market.addProductsInMarket()
/*
 3. Создать класс "Банк" и "Клиент"
 создать функции для:
 1) Подсчета клиентов банка
 2) Отображения баланса по ID или фамилии клиента
 3) Перевода средств от клиента к другому клиенту
 */
class customer {
    var name = ""
    var id = Int()
    var account = Int()
    var balance = Int()
    
    init (name: String, id: Int, account: Int, balance: Int) {
        self.name = name
        self.id = id
        self.account = account
        self.balance = balance
    }
}
var customer1 = customer(name: "Steven Paul Jobs", id: 1111, account: 111101, balance: 10_200_000_000)
var customer2 = customer(name: "Jeffrey Preston Bezos", id: 2222, account: 222202, balance: 130_400_000_000)
var customer3 = customer(name: "Elon Reeve Musk", id: 3333, account: 333303, balance: 207_700_000_000)

class Bank {
    var name = ""
    var bankCustomers: [customer] = []
    var customerCount = 0
    
    init (name: String, customerCount: Int) {
        self.name = name
        self.customerCount = customerCount
    }
    //Функция для подсчета количества клиентов банка
    func bankCustomerList() {
        bankCustomers.append(customer1)
        bankCustomers.append(customer2)
        bankCustomers.append(customer3)

        dump(bankCustomers)
        for i in bankCustomers {
            customerCount += 1
            print ("Количество клиентов банка: \(customerCount)")
        }
    }
    //Функция которая находит баланс счета клиента по id или ФИО
    func balanceOfCustomers () {
        if customer1.id == 1111 || customer1.name == "Steven Paul Jobs" {
            print ("Баланс счета клиента Steven Paul Jobs: \(customer1.balance) долларов США")
        }
        if customer2.id == 2222 || customer2.name == "Jeffrey Preston Bezos" {
            print ("Баланс счета клиента Jeffrey Preston Bezos: \(customer2.balance) долларов США")
        }
        if customer3.id == 3333 || customer3.name == "Elon Reeve Musk" {
            print ("Баланс счета клиента Elon Reeve Musk: \(customer3.balance) долларов США")
        }
    }
    //Функция которая переводит деньги со счета на счет
    func moneyTransfer() {
        if customer1.balance != nil {
            customer1.balance -= 1_000_000
            customer2.balance += 1_000_000
            print ("Перевод 1 000 000 долларов США со счета Steven Paul Jobs 111101 на счет Jeffrey Preston Bezos 222202\nБаланс счета Jeffrey Preston Bezos 222202 составлет \(customer2.balance)")
        }
        if customer2.balance != nil {
            customer2.balance -= 100_000_000
            customer3.balance += 100_000_000
            print ("Перевод 100 000 000 долларов США со счета Jeffrey Preston Bezos 222202 на счет Elon Reeve Musk 333303\nБаланс счета Elon Reeve Musk 333303 составлет \(customer3.balance)")
        }
        if customer3.balance != nil {
            customer3.balance -= 1_000_000_000
            customer1.balance += 1_000_000_000
            print ("Перевод 1 000 000 000 долларов США со счета Elon Reeve Musk 333303 на счет Steven Paul Jobs 111101\nБаланс счета Steven Paul Jobs 111101 составлет \(customer1.balance)")
        }
    }
}

var bankCustomer = Bank(name: "Bank of America", customerCount: 0)
bankCustomer.bankCustomerList()
bankCustomer.balanceOfCustomers()
bankCustomer.moneyTransfer()
