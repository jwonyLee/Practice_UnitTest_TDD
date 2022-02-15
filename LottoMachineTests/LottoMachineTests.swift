//
// © 2022. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import XCTest

class LottoMachineTests: XCTestCase {
    var lottoMachine: LottoMachine?
    
    override func setUpWithError() throws {
        try setUpWithError()
        lottoMachine = LottoMachine()
    }

    override func tearDownWithError() throws {
        try tearDownWithError()
        lottoMachine = nil
    }

    // MARK: - isValidLottoNumbers(of:)
    // TODO: 로또 숫자의 개수가 6개 이하인 경우 false를 반환한다
    // TODO: 로또 숫자의 개수가 6개 이상인 경우 false를 반환한다
    // TODO: 로또 숫자의 개수가 6개가 넘으면서 중복이 있는 경우 false를 반환한다
    // TODO: 로또 숫자의 개수가 6개 이면서 중복이 있는 경우 false를 반환한다
    // TODO: 로또 숫자의 범위가 1 ~ 45 내에 없는 경우 false를 반환한다
    
    // MARK: - makeRandomLottoNumbersArray()
    // TODO: 여섯 개의 숫자를 반환한다
    
    // MARK: - countMatchingNumber(user:winner:)
    // TODO: user와 winner의 숫자가 1개만 일치한 경우 1을 반환한다
    // TODO: user와 winner의 숫자가 로또 숫자가 아닌 경우 LottoMachineError.invalidNumbers를 던진다.
}
