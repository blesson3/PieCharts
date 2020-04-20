//
//  PieSlice.swift
//  PieCharts
//
//  Created by Ivan Schuetz on 30/12/2016.
//  Copyright © 2016 Ivan Schuetz. All rights reserved.
//

import UIKit

public struct PieSlice: Hashable, CustomDebugStringConvertible {
    public               let modelId: String?        /// See `PieSliceModel.id`
    public               let view   : PieSliceLayer
    public internal(set) var data   : PieSliceData

    public init(modelId: String? = nil, data: PieSliceData, view: PieSliceLayer) {
        self.modelId = modelId
        self.data = data
        self.view = view
    }
    
    public var hashValue: Int {
        return data.id
    }
    
    public var debugDescription: String {
        return data.debugDescription
    }
}

public func ==(slice1: PieSlice, slice2: PieSlice) -> Bool {
    return slice1.data.id == slice2.data.id
}
