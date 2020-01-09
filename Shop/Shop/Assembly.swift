//
//  Assembly.swift
//  Shop
//
//  Created by Nikita Kolmykov on 09.01.2020.
//  Copyright © 2020 Nikita Kolmykov. All rights reserved.
//

import Foundation

var database = DatabaseImpl()
var catalog = CatalogImpl()
var warehouse = WarehouseImpl(number: 340, database: database)
var check = CheckImpl()
var checkFMT = CheckFormatterImpl()
var cashbox = CashboxImpl(number: 105, warehouse: warehouse, catalog: catalog, database: database, check: check, checkFMT: checkFMT)
