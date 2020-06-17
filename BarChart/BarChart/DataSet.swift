//
//  DataSet.swift
//  BarChart
//
//  Created by ankit bharti on 25/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import Foundation

struct BarData: Identifiable {
    let id = UUID()
    let value: Double
    let label: String
    let description: String
}

struct DataSet {
    static var mockData: [BarData] {
        let jan = BarData(value: 10.0, label: "Jan", description: "January")
        let feb = BarData(value: 20.0, label: "Feb", description: "February")
        let mar = BarData(value: 30.0, label: "Mar", description: "March")
        let apr = BarData(value: 120.0, label: "Apr", description: "April")
        let may = BarData(value: 50.0, label: "May", description: "May")
        let jun = BarData(value: 130.0, label: "Jun", description: "June")
        let jul = BarData(value: 170.0, label: "Jul", description: "July")
        let aug = BarData(value: 80.0, label: "Aug", description: "August")
        let sep = BarData(value: 900.0, label: "Sep", description: "Sepetember")
        let oct = BarData(value: 100.0, label: "Oct", description: "October")
        let nov = BarData(value: 120.0, label: "Nov", description: "November")
        let dec = BarData(value: 130.0, label: "Dec", description: "December")

    
        return [jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec]
    }
}
