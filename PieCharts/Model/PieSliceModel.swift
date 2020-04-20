//
//  PieSliceModel.swift
//  PieCharts
//
//  Created by Ivan Schuetz on 30/12/2016.
//  Copyright © 2016 Ivan Schuetz. All rights reserved.
//

import UIKit

public class PieSliceModel: CustomDebugStringConvertible {
    
    public let id   : String? /// arbitrary unique value for external reference
    public let value: Double
    public let color: UIColor
    public let obj  : Any?    /// optional object to pass around e.g. to the layer's text generators

    public init(id: String? = nil, value: Double, color: UIColor, obj: Any? = nil) {
        self.id = id
        self.value = value
        self.color = color
        self.obj = obj
    }
    
    public var debugDescription: String {
        return "{id: \(id ?? "nil"), value: \(value), obj: \(String(describing: obj))}"
    }
}
