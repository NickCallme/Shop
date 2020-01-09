//
//  Warehouse.swift
//  Shop
//
//  Created by Nikita Kolmykov on 29.12.2019.
//  Copyright © 2019 Nikita Kolmykov. All rights reserved.
//

import Foundation

// MARK: Протокол Склада
protocol Warehouse {
    
    // Добавление товара на склад
    func add ( id: String, count: Double )
    
    // Удаление товара со склада
    func remove ( id: String, count: Double )
    
    //Продажа товара со склада
    func sell ( check: Check )
    
    // Удаление продукта со склада
    func removeProduct ( id: String)
    
    // Изменение индификатора продукта
    func changeID ( id: String, newID: String)
    
}

// MARK: Реализация Склада
class WarehouseImpl : Warehouse {
    
    // Номер склада
    var number : Int
    
    // Данные склада
    var data = [ String : Double ]()
    
    // Активность на складе
    var info = [String]()
    
    // База данных
    var database : Database
    
    // Добавление товара на склад
    func add(id: String, count: Double) {
        
        if data[id] == nil {
            data[id] = count
        } else {
            data.updateValue( data[id]! + count , forKey: id)
        }
        
    }
    
    // Удаление товара со склада
    func remove(id: String, count: Double) {
        data.updateValue( data[id]! - count , forKey: id)
    }
    
    // Продажа товара со склада
    func sell(check: Check) {
        
        let products = check.returnData()
        
        for obj in products {
            remove( id: obj.key, count: obj.value.1 )
        }
        
    }
    
    // Удаление продукта со склада
    func removeProduct(id: String) {
        data.removeValue(forKey: id)
    }
    
    // Изменение индификатора продукта
    func changeID(id: String, newID: String) {
        let count = data.removeValue(forKey: id)
        data[newID] = count
    }
    
    // Инициализация
    init( number: Int , database: Database ) {
        
        self.number = number
        self.database = database
        
    }
    
    //Конец реализации
}
