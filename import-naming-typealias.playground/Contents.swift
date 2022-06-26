import Foundation

import UIKit
/*
 다른 라이브러리, 프레임워크를 가져온다.
 여러개의 클래스로 이루어져있으며, 어떠한 하나의 편의성 아키텍처 혹은 함수 등을 제공한다.
 UIKit은 UiButton 등을 사용할 수 있는 프레임워크.
 */

var snake_case_variable = ""
/*
 주로 프로그래밍과 상관 없는 UI 적인 부분을 작성할 때 사용하는 기법.
 (파일명, XML 속성 등)
 UPPER_CASE_SNAKE_CASE는 상수를 작성할 때 프로그래밍에서도 주로 사용한다.
 */

var camelCase = ""
class CamelCase2 {}
/*
 주로 프로그래밍에서 사용.
 클래스는 가장 앞이 대문자로 시작하는 것이 약속.
 */

typealias Age = Int
var a: Age = 30
/*
 일반적으로 사용하는 자료형을 대신해 가독성을 위해 사용.
 */

typealias URL = [String: String]
let addresses = ["Google":"www.google.com", "Apple":"www.apple.com"]
/*
 Dictionary, Array로도 사용 가능.
 */

typealias TwoNumber = (_ num1: Double, _ num2: Double) -> Double
func twoNumberCalculate(pair: TwoNumber) {
    pair(1, 2)
}
twoNumberCalculate(pair: {age1, age2 -> Double in return age1 + age2})
