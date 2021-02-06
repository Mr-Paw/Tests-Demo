//
//  Tests_DemoTests.swift
//  Tests DemoTests
//
//  Created by paw on 06.02.2021.
//

import XCTest
@testable import Tests_Demo

class Tests_DemoTests: XCTestCase {
    func testPasswords() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssert(Validater.validatePassword("") == false)
        XCTAssert(Validater.validatePassword("ksjhksG") == false)
        XCTAssert(Validater.validatePassword(";;;;;;") == false)
        XCTAssert(Validater.validatePassword("asd2V") == false)
        XCTAssert(Validater.validatePassword("QwErTyU123") == true)
        XCTAssert(Validater.validatePassword("123456789qwerty") == false)
        XCTAssert(Validater.validatePassword("123QWERTy") == true)
        XCTAssert(Validater.validatePassword("coolMan123") == true)

    }

    func testEmails() throws{
        XCTAssert(Validater.validateEmail("sdf") == false)
        XCTAssert(Validater.validateEmail("cool@man.com") == true)
        XCTAssert(Validater.validateEmail("dddddd.com") == false)
        XCTAssert(Validater.validateEmail("errored@errored") == false)
        XCTAssert(Validater.validateEmail("dog@cat.com") == true)
        XCTAssert(Validater.validateEmail("gIg.ru@gIg") == false)
        XCTAssert(Validater.validateEmail("sdf@gmail.com") == true)
        XCTAssert(Validater.validateEmail("swifter@swift.swift") == true)
        XCTAssert(Validater.validateEmail("sdf$sdf,com") == false)

    }
    
    
   
}
