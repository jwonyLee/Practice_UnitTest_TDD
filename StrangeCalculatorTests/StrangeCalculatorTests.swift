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

    // TODO: TDD로 정수 타입을 파라미터로 받아, 그 절대값이 홀수이면 부호를 바꾸어서 반환하는 메서드 구현하기
    func test_0을_넣으면_0을_반환한다() {
        // given
        let input: Int = 0
        let expectation: Int = 0
        
        // when
        let result: Int = strangeCalculator?.changeSignIfAbsoluteNumberIsOdd(to: input) ?? 0
        
        // result
        XCTAssertEqual(result, expectation)
    }
    
    // TODO: 0을 넣으면 0을 반환한다
    // TODO: 10을 넣으면 10을 반환한다
    // TODO: 3을 넣으면 -3을 반환한다
    // TODO: -3을 넣으면 3을 반환한다
}
