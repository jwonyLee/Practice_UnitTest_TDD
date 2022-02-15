//
// © 2022. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import Foundation

struct StrangeCalculator {
    // TODO: TDD로 정수 타입을 파라미터로 받아, 그 절대값이 홀수이면 부호를 바꾸어서 반환하는 메서드 구현하기
    func changeSignIfAbsoluteNumberIsOdd(to number: Int) -> Int {
        if number % 2 != 0 {
            return number * -1
        }
        return number
    }
}
