//
//  Formatter.swift
//  Tests Demo
//
//  Created by paw on 06.02.2021.
//

import Foundation

public class Validater{
    public static func validateEmail(_ email: String) -> Bool{
        var array = email.split(separator: "@")
        var haveSpecialSym = false

        if let lastEl = array.last, array.count != 1{
            array.remove(at: 1)
            for i in lastEl.split(separator: "."){
                array.append(i)
            }
            return array.count == 3
        }else{
            return false
        }
        
    }
    public static func validatePassword(_ password: String) -> Bool{
        let predicate = NSPredicate(format: "SELF MATCHES %@ ", "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).{6,}$")
       return predicate.evaluate(with: password)
    }
}
