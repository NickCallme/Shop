//
//  main.swift
//  Shop
//
//  Created by Nikita Kolmykov on 29.12.2019.
//  Copyright © 2019 Nikita Kolmykov. All rights reserved.
//

import Foundation


var potato = Product(name: "Картошка", price: 34, unit: .кг )
var chicken = Product(name: "Курица", price: 240, unit: .кг )
var fish = Product(name: "Рыба", price: 430, unit: .кг )
var bread = Product(name: "Хлеб", price: 30, unit: .шт )
var rice = Product(name: "Рис", price: 55, unit: .шт )

catalog.add(id: "1", potato)
catalog.add(id: "2", chicken)
catalog.add(id: "3", fish)
catalog.add(id: "4", bread)
catalog.add(id: "5", rice)

warehouse.add(id: "1", count: 500)
warehouse.add(id: "2", count: 300)
warehouse.add(id: "3", count: 250)
warehouse.add(id: "4", count: 1300)
warehouse.add(id: "5", count: 750)

cashbox.addPosition(id: "4", count: 2)
cashbox.addPosition(id: "1", count: 5)
cashbox.addPosition(id: "3", count: 2)
cashbox.addPosition(id: "5", count: 1)
cashbox.addPosition(id: "2", count: 2)
cashbox.addPosition(id: "5", count: 1)

var example = cashbox.purchaseCash()

cashbox.addPosition(id: "3", count: 20)
cashbox.addPosition(id: "2", count: 50)
cashbox.addPosition(id: "5", count: 20)
cashbox.addPosition(id: "4", count: 10)
cashbox.addPosition(id: "3", count: 20)
cashbox.addPosition(id: "1", count: 10)

var example2 = cashbox.purchaseCashless()


var cashForDay = database.checkAllShopForDay(day: "09.01.2020")

var checkForDay = database.checkCashboxForDay(number: 105, day: "09.01.2020")

func printExample (_ str: [String]) {
    for obj in str {
        print(obj)
    }
    print("")
}

func printCheck (_ checks: [Check] ) {
    for check in checks {
        printExample(check.description())
    }
}

printExample(example)
printExample(example2)

printCheck(checkForDay)

print("")
print(cashForDay)
