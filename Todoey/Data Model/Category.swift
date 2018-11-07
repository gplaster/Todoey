//
//  Category.swift
//  Todoey
//
//  Created by Grant Plaster on 11/6/18.
//  Copyright © 2018 Grant Plaster. All rights reserved.
//

import Foundation
import RealmSwift

class Category : Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
