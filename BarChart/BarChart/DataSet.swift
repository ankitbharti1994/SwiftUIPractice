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
}

struct DataSet {
    static var mockData: [BarData] {
        let jan = BarData(value: 10.0, label: "Jan")
        let feb = BarData(value: 20.0, label: "Feb")
        let mar = BarData(value: 30.0, label: "Mar")
        let apr = BarData(value: 40.0, label: "Apr")
        let may = BarData(value: 50.0, label: "May")
        let jun = BarData(value: 60.0, label: "Jun")
        let jul = BarData(value: 70.0, label: "Jul")
        let aug = BarData(value: 80.0, label: "Aug")
        let sep = BarData(value: 90.0, label: "Sep")
        let oct = BarData(value: 100.0, label: "Oct")
        let nov = BarData(value: 120.0, label: "Nov")
        let dec = BarData(value: 140.0, label: "Dec")

    
        return [jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec]
    }
}
