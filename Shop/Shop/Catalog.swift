//
//  Catalog.swift
//  Shop
//
//  Created by Nikita Kolmykov on 29.12.2019.
//  Copyright © 2019 Nikita Kolmykov. All rights reserved.
//

import Foundation

// MARK: Протокол Каталога
protocol Catalog {
    
    // Добавление продукта
    func add( id: String , _ product: Product )
    
    // Найти продукт по индификатору
    func find( _ id: String ) -> Product?
    
    // Обновить ценну на продукт по индификатору
    func updatePrice( id: String, newPrice: Float )
    
    // Удалить продукт
    func removeProduct( id: String )
    
}

// MARK: Реализация Каталога
class CatalogImpl : Catalog {
    
    // Данные каталога
    var data : [ String : Product ]
    
    // Добавление продукта в каталог
    func add(id: String, _ product: Product) {
        data[id] = product
    }
    
    // Найти продукт по индификатору
    func find(_ id: String) -> Product? {
        for obj in data {
            if obj.key == id { return obj.value }
        }
        return nil
    }
    
    // Обновить ценну по индификатору
    func updatePrice(id: String, newPrice: Float) {
        data[id]?.price = newPrice
    }
    
    // Удалить продукт из каталога
    func removeProduct(id: String) {
        data.removeValue(forKey: id )
    }
    
    // Инициализация
    init() {
        self.data = [ String : Product]()
    }
    
// Конец реализации
}
