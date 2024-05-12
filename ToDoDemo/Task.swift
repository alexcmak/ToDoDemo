//
//  Task.swift
//  ToDoDemo
//
//  Created by Alex Mak on 5/11/24.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
