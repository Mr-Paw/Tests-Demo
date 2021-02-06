//
//  Tests_DemoUITests.swift
//  Tests DemoUITests
//
//  Created by paw on 06.02.2021.
//

import XCTest

class Tests_DemoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let email = "test@test.test"
        let password = "testTEST123"
        XCTAssert(Validater.validateEmail(email) && Validater.validatePassword(password) == true)
        let emailTF = app.textFields["Enter email"]
        emailTF.tap()
        emailTF.typeText(email)
        app.secureTextFields["Enter password"].tap()
        let enterPasswordSecureTextField = app.secureTextFields["Enter password"]
        enterPasswordSecureTextField.typeText(password)
        app.buttons["Login"].tap()
    }
    
    
    
    
    func testExample2() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let email = "test@test"
        let password = "testTEST123"
        XCTAssert(Validater.validateEmail(email) && Validater.validatePassword(password) == false)
        let emailTF = app.textFields["Enter email"]
        emailTF.tap()
        emailTF.typeText(email)
        app.secureTextFields["Enter password"].tap()
        let enterPasswordSecureTextField = app.secureTextFields["Enter password"]
        enterPasswordSecureTextField.typeText(password)
        app.buttons["Login"].tap()
    }
    
    
    func testExample3() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        let email = "test@test.test"
        let password = "test"
        XCTAssert(Validater.validateEmail(email) && Validater.validatePassword(password) == false)
        let emailTF = app.textFields["Enter email"]
        emailTF.tap()
        emailTF.typeText(email)
        app.secureTextFields["Enter password"].tap()
        let enterPasswordSecureTextField = app.secureTextFields["Enter password"]
        enterPasswordSecureTextField.typeText(password)
        app.buttons["Login"].tap()
    }

}
