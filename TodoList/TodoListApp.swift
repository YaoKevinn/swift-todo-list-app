//
//  TodoListApp.swift
//  TodoList
//
//  Created by YaoKevinn on 11/12/2021.
//

import SwiftUI

/*
 MARK: MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            // Asegura que todos los views en nuestra App va a ser NavigationView
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
