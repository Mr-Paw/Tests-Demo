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
        if password.count >= 6  {
            let strArray = password.map{$0}
            var haveNumber = false
            var haveLowercased = false
            var haveUppercased = false
            strArray.forEach { (sym) in
                if sym.isLowercase{
                    haveLowercased = true
                }else if sym.isUppercase{
                    haveUppercased = true
                }else if sym.isNumber{
                    haveNumber = true
                }
            }
            
            return haveNumber && haveLowercased && haveUppercased
        }else{
            return false
        }
    }
}
