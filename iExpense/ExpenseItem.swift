//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Sara Nicole Mikac on 11/30/20.
//

import Foundation
struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}
