//
//  EmailAddressValidator.swift
//  lessons4.iostesting
//
//  Created by mac on 7/27/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

class EmailAddressValidator: NSObject {
    func validate(_ value:String) -> Bool {
        if (value.characters.count < 6) {
            return false
        }
        let whitespace = Set(" ".characters)
        if (value.characters.filter {whitespace.contains($0)}).count > 0 {
            return false
        }
        let numbers = Set("0123456789".characters)
        if (value.characters.filter {numbers.contains($0)}).count > 0 {
            return false
        }
        let specialCharacters = Set("+,!#$%^&*();\\/|<>\"".characters)
        if (value.characters.filter {specialCharacters.contains($0)}).count > 0 {
            return false
        }
        guard let regexValidator = try? NSRegularExpression(pattern: "([A-Z0- 9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4})", options: .caseInsensitive) else {
            return false
        }
        if regexValidator.numberOfMatches(in: value,
                                          options: NSRegularExpression.MatchingOptions.reportCompletion,
                                          range: NSMakeRange(0, value.characters.count)) > 0 {
        return true }
    return false
}
}
