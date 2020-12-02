//
//  ContentView.swift
//  iExpense
//
//  Created by Sara Nicole Mikac on 11/28/20.
//

import SwiftUI
//struct SecondView: View {
//    @Environment(\.presentationMode) var presentationMode
//    var name: String
//
//    var body: some View {
//
//        Button("Dismiss") {
//            self.presentationMode.wrappedValue.dismiss()
//        }
//
//    }
//}

/*
 How to use onDelete. It must be part of a ForEach.
 */
struct ContentView: View {
    @ObservedObject var expenses = Expenses()
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { items in
                    Text(items.name)
                }.onDelete(perform: removeItems)
            }.navigationBarTitle("iExpense")
            .navigationBarItems(trailing:
                Button(action: {
                    let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                    self.expenses.items.append(expense)
                }) {
                    Image(systemName: "plus")
                }
            )
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    /*
     NOTE: For the CYOA app, make sure to use Codable protocol to save your objects. A user profile could be a struct with all sort of information in it.
     */
}
