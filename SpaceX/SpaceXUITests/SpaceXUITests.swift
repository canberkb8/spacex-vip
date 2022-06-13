//
//  SpaceXUITests.swift
//  SpaceXUITests
//
//  Created by Canberk Bibican on 13.06.2022.
//

import XCTest

class SpaceXUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
                        
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Falcon 1"]/*[[".cells.staticTexts[\"Falcon 1\"]",".staticTexts[\"Falcon 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let backButton = app.navigationBars["SpaceX.RocketDetailView"].buttons["Back"]
        backButton.tap()
        
        let falcon9StaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Falcon 9"]/*[[".cells.staticTexts[\"Falcon 9\"]",".staticTexts[\"Falcon 9\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        falcon9StaticText.tap()
        backButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Falcon Heavy"]/*[[".cells.staticTexts[\"Falcon Heavy\"]",".staticTexts[\"Falcon Heavy\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Starship"]/*[[".cells.staticTexts[\"Starship\"]",".staticTexts[\"Starship\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        
    }
    
    func testExample2() throws {
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Falcon 1"]/*[[".cells.staticTexts[\"Falcon 1\"]",".staticTexts[\"Falcon 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth."]/*[[".cells.staticTexts[\"The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.\"]",".staticTexts[\"The Falcon 1 was an expendable launch system privately developed and manufactured by SpaceX during 2006-2009. On 28 September 2008, Falcon 1 became the first privately-developed liquid-fuel launch vehicle to go into orbit around the Earth.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Falcon Heavy"]/*[[".cells.staticTexts[\"Falcon Heavy\"]",".staticTexts[\"Falcon Heavy\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit."]/*[[".cells.staticTexts[\"Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit.\"]",".staticTexts[\"Falcon 9 is a two-stage rocket designed and manufactured by SpaceX for the reliable and safe transport of satellites and the Dragon spacecraft into orbit.\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["SpaceX.RocketDetailView"].buttons["Back"].tap()
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
