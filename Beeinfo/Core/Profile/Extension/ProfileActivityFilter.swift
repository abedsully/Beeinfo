//
//  ProfileActivityFilter.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/7/24.
//

import Foundation

enum ProfileActivityFilter: Int, Identifiable, CaseIterable {
    case beets
    case beesh
    
    var title: String {
        switch self {
        case .beets:
            "Beets"
        case .beesh:
            "Beesh"
        }
    }
    
    var id: Int? {return self.rawValue}
}
