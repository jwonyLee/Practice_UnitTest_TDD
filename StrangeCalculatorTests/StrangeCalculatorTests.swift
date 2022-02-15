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
}
