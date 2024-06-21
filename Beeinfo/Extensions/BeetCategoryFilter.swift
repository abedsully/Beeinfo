//
//  BeetCategoryFilter.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/9/24.

import Foundation

enum BeetCategoryFilter: Int, CaseIterable, Identifiable {
    case all
    case fess
    case points
    case tutor
    
    var title: String {
        switch self {
        case .all:
            "All"
        case .fess:
            "Fess"
        case .points:
            "Points"
        case .tutor:
            "Tutor"
        }
    }
    
    var id: Int? {return self.rawValue}
}
