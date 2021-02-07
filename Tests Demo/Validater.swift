//
//  Formatter.swift
//  Tests Demo
//
//  Created by paw on 06.02.2021.
//

import Foundation

public class Validater{
    public static func validateEmail(_ email: String) -> Bool{
        let predicate = NSPredicate(format:"SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
        return predicate.evaluate(with: email)
    }
    public static func validatePassword(_ password: String) -> Bool{
        let predicate = NSPredicate(format: "SELF MATCHES %@ ", "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{6,}$")
       return predicate.evaluate(with: password)
    }
}
