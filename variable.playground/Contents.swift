import Foundation

var a = 1
/*
 변수.
 세미콜론 필요 없음.
 */

let x = 1
/*
 상수.
 */

var intNum = 3
/*
 정수형 변수 암시적 선언 및 초기화.
 */

var str1 = "문자열"
/*
 문자열형 변수 암시적 선언 및 초기화.
 */

type(of:a)
/*
 값의 자료형을 반환.
 */

var b: Int
/*
 정수형 변수 명시적 선언.
 */

var float1: Float = 30.0
/*
 부동 소수점 실수형 변수 명시적 선언 및 초기화.
 */

var dobule1: Double = 30.0
/*
 실수형 변수 명시적 선언 및 초기화.
 */

let boolean1: Bool = true
/*
 논리형 실수 명시적 선언 및 초기화.
 */

class A {}
var object1 = A()
/*
 객체를 암시적 선언 및 초기화.
 */

let optional1: Int?
/*
 Optional(nullable) 정수형 상수 명시적 선언.
 */

optional1 = 3
if let wrappingInt = optional1 { print(wrappingInt) }
/*
 옵셔널 상수 벗겨서 사용하는 방법.(nil이 아닐 경우 식을 실행)
 */

let wrappingInt2 = optional1!
/*
 옵셔널 상수를 강제로 벗김.(해당 옵셔널은 무조건 nil이 아니라고 판단하는 Int로
 변환. 단, 에러가 발생할 경우 프로그래머의 책임.)
 */
