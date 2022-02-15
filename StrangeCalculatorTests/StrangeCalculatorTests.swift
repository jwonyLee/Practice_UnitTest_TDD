//
// © 2022. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//


import XCTest

class StrangeCalculatorTests: XCTestCase {
    var strangeCalculator: StrangeCalculator?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        strangeCalculator = StrangeCalculator()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        strangeCalculator = nil
    }

    func test_0을_넣으면_0을_반환한다() {
        // given
        let input: Int = 0
        let expectation: Int = 0
        
        // when
        let result: Int = strangeCalculator?.changeSignIfAbsoluteNumberIsOdd(to: input) ?? 0
        
        // result
        XCTAssertEqual(result, expectation)
    }

    func test_10을_넣으면_10을_반환한다() {
        // given
        let input: Int = 10
        let expectation: Int = 10
        
        // when
        let result: Int = strangeCalculator?.changeSignIfAbsoluteNumberIsOdd(to: input) ?? 0
        
        // result
        XCTAssertEqual(result, expectation)
    }
    
    func test_3을_넣으면_부호를_바꿔서_반환한다() {
        // given
        let input: Int = 3
        let expectation: Int = -3
        
        // when
        let result: Int = strangeCalculator?.changeSignIfAbsoluteNumberIsOdd(to: input) ?? 0
        
        // result
        XCTAssertEqual(result, expectation)
    }
    
    // TODO: -3을 넣으면 3을 반환한다
}
