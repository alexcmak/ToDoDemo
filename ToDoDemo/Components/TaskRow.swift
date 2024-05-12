//
//  TaskRow.swift
//  ToDoDemo
//
//  Created by Alex Mak on 5/5/24.
//

import SwiftUI

struct TaskRow: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var task: String
    var completed: Bool
    var body: some View {
        HStack(spacing:20) {
            Image(systemName: completed ? "checkmark.circle" : "circle")
            
            Text(task)
        }
    }
}

#Preview {
    TaskRow(task: "Do Laundry", completed: true)
}
