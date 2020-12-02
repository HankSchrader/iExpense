//
//  Expenses.swift
//  iExpense
//
//  Created by Sara Nicole Mikac on 11/30/20.
//

import Foundation
class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
