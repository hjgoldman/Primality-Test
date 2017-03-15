//
//  Prime_Number_CheckerUITests.swift
//  Prime Number CheckerUITests
//
//  Created by Hayden Goldman on 3/15/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import XCTest

class Prime_Number_CheckerUITests: XCTestCase {
    
    var app :XCUIApplication!

    
    override func setUp() {
        super.setUp()
        
        self.app = XCUIApplication()
        self.app.launch()

    }
    
    
    func testUI_This_Is_A_Prime_Number() {
        
        let numberTextField = self.app.textFields["numberTextField"]
        numberTextField.tap()
        numberTextField.typeText("5")

        let resultButton = self.app.buttons["resultButton"]
        resultButton.tap()
        
        let resultLabel = self.app.staticTexts["resultLabel"]

        XCTAssertEqual(resultLabel.label, "This is a prime number")
        
    }
    
    func testUI_This_Is_Not_A_Prime_Number() {
        
        let numberTextField = self.app.textFields["numberTextField"]
        numberTextField.tap()
        numberTextField.typeText("50")
        
        let resultButton = self.app.buttons["resultButton"]
        resultButton.tap()
        
        let resultLabel = self.app.staticTexts["resultLabel"]
        
        XCTAssertEqual(resultLabel.label, "This is not a prime number")
        
    }
    
    func testUI_This_Is_Not_A_Number() {
        
        let numberTextField = self.app.textFields["numberTextField"]
        numberTextField.tap()
        numberTextField.typeText("Hello World")
        
        let resultButton = self.app.buttons["resultButton"]
        resultButton.tap()
        
        let resultLabel = self.app.staticTexts["resultLabel"]
        
        XCTAssertEqual(resultLabel.label, "This is not a integer")
        
    }
    
}
