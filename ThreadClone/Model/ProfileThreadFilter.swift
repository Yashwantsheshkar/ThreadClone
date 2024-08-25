//
//  ProfileThreadFilter.swift
//  ThreadClone
//
//  Created by Yashwant Sheshkar on 25/08/24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
     case threads
    case replies
    
    
    var title: String {
        switch self {
        case.threads: return "Threads"
        case.replies: return "Return"
        
        }
    }
    
    var id: Int { return self.rawValue }
    
    
}
