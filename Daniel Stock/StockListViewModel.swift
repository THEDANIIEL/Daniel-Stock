//
//  StockListViewModel.swift
//  Daniel Stock
//
//  Created by Macbook on 4/15/1401 AP.
//


import Foundation
import SwiftUI

class StockListViewModel: ObservableObject {
    
    @Published var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    func load() {
        fetchStocks()
    }
    
    private func fetchStocks() {
        
        Webservice().getStocks { stocks in
            if let stocks = stocks {
                DispatchQueue.main.async {
                     self.stocks = stocks.map(StockViewModel.init)
                }
               
            }
        }
    }
    
}
