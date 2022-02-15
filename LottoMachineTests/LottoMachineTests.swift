//
// © 2022. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import XCTest

class LottoMachineTests: XCTestCase {
    var lottoMachine: LottoMachine?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        lottoMachine = LottoMachine()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        lottoMachine = nil
    }

    // MARK: - isValidLottoNumbers(of:)
    
    func test_로또_숫자의_개수가_6개_이하인_경우_false를_반환한다() {
        // given
        let input: [Int] = [1, 5, 6, 7]
        
        // when
        let result: Bool = lottoMachine?.isValidLottoNumbers(of: input) ?? false
        
        // result
        XCTAssertFalse(result)
    }
    
    func test_로또_숫자의_개수가_6개_이상인_경우_false를_반환한다() {
        // given
        let input: [Int] = [1, 5, 6, 7, 9, 10, 11, 21]
        
        // when
        let result: Bool = lottoMachine?.isValidLottoNumbers(of: input) ?? false
        
        // result
        XCTAssertFalse(result)
    }

    func test_로또_숫자의_개수가_6개_이상이면서_중복이_있는_경우_false를_반환한다() {
        // given
        let input: [Int] = [1, 5, 6, 7, 9, 11, 1]
        
        // when
        let result: Bool = lottoMachine?.isValidLottoNumbers(of: input) ?? false
        
        // result
        XCTAssertFalse(result)
    }
    
    func test_로또_숫자의_개수가_6개_이면서_중복이_있는_경우_false를_반환한다() {
        // given
        let input: [Int] = [1, 1, 2, 3, 11, 31]
        
        // when
        let result: Bool = lottoMachine?.isValidLottoNumbers(of: input) ?? false
        
        // result
        XCTAssertFalse(result)
    }
    
    func test_로또_숫자의_범위가_1에서_45_사이에_없는_경우_false를_반환한다() {
        // given
        let input: [Int] = [1, 2, 65, 31, 37, 16]
        
        // when
        let result: Bool = lottoMachine?.isValidLottoNumbers(of: input) ?? false
        
        // result
        XCTAssertFalse(result)
    }
    
    // MARK: - makeRandomLottoNumbersArray()
    
    func test_6개의_숫자를_반환한다() {
        // given
        let expectation: Int = 6
        
        // when
        let result: [Int] = lottoMachine?.makeRandomLottoNumbersArray() ?? []
        
        // result
        XCTAssertEqual(result.count, expectation)
    }
    
    // MARK: - countMatchingNumber(user:winner:)
    // TODO: user와 winner의 숫자가 1개만 일치한 경우 1을 반환한다
    // TODO: user와 winner의 숫자가 로또 숫자가 아닌 경우 LottoMachineError.invalidNumbers를 던진다.
}
