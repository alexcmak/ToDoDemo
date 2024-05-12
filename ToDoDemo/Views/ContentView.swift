//
//  ContentView.swift
//  ToDoDemo
//
//  Created by Alex Mak on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView().environmentObject(realmManager)

            SmallAddButton().padding().onTapGesture {
                showAddTaskView.toggle() // 15:16
            }
        }.sheet(isPresented: $showAddTaskView) {
         
            //AddTaskView() // 16:24
            AddTaskView().environmentObject(realmManager)
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom).background(Color(hue:0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(RealmManager())
    }
}
