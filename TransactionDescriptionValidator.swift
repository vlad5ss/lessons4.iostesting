//
//  TransactionDescriptionValidator.swift
//  lessons4.iostesting
//
//  Created by mac on 7/30/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation


class TransactionDescriptionValidator: NSObject {
    
    func validate(_ value:String) -> Bool {
        
        if ((value.characters.count < 1) || (value.characters.count > 20)) {
            return false
        }
        
        return true
    }
    
}
