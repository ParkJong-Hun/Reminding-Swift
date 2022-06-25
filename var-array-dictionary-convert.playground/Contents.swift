import Foundation

var str: String = "this is string."
var number: Int = 30

var containEscapeSequence: String = "hi \(str) is \(type(of: str))and \(number) is \(type(of: number))"
print(containEscapeSequence)
/*
 문자열 사이에 \(값)을 사용하면, 해당 값을 문자열화 시켜준다.
 문자열 사이에서 언제든지 사용 가능하므로 연속적으로 문자열을 사용할 수 있게 해준다.
 */

print("string size is " + "\(containEscapeSequence.count)")
/*
 String.count로 문자열의 길이를 알 수 있다.
 이 것은 문자열이 문자형(Char)의 배열이기 때문이다.
 */

var array: [Int] = [1, 2, 3, 4 ,5]
/*
 정수형 배열 명시적 선언 및 초기화.
 배열 묶음은 []안에 값을 여러개 저장하는 것으로 이루어진다.
 C언어와 다르게 실제 메모리상에 연속적으로 저장되어 있지 않다.
 */

var array2 = ["aa", "bb", "cc"]
/*
 문자열형 배열 암시적 선언 및 초기화.
 */

for index in array {
    print(index)
}
/*
 배열의 요소를 처음부터 끝까지 index에 대입한 후 다음 식에 사용.
 */

var scores: [String : Int] = ["native language": 90, "math": 60, "english": 70, "science": 100, "society": 40, "history": 90, "athletic": 50]
/*
 key가 문자열이고 value가 정수형인 Dictionary 명시적 선언 및 초기화.
 HashMap처럼 키와 값이 한 쌍이다.
 키로는 값을 나타낼 수 있지만, 값으로 키는 나타낼 수 없고, 값의 위치가 키를 나타낸다.
 */

for (key, value) in scores {
    print("subject: \(key), score: \(value)")
}
/*
 Dictionary의 각 요소를 꺼내서 한 쌍의 키와 값에 해당하는 변수에 대입하여 사용.
 */

for score in scores {
    print("subject: \(score.key), score: \(score.value)")
}
/*
 Dictionary의 각 요소를 꺼내서 한 쌍의 키와 값을 갖고 있는 Dictionary Element로 사용.
 Dictionary Element는 .key, .value로 값을 꺼내 사용 가능.
 */

var a: Int = 1
/*
 정수형
 */

var b: Double = 1.0055233421342341234123123
var c: Double = 123456.123456123456123456123456
print(b)
/*
 정수 + 소수점을 8바이트로 표현 가능.
 자연수 부분은 15자리까지.
 */

var d: Int32 = 1131231232
/*
 정수를 4바이트로 표현
 */

var e: Int64 = 1231512512312312312
/*
 정수를 8바이트로 표현
 */

var f: Float = 123456.123456123456123456123456
/*
 정수 + 소수점을 4바이트로 표현 가능.
 자연수 부분은 6자리까지.
 */

Int(b)
/*
 정수형으로 형변환.
 */

Double(a)
Double(f)
/*
 Double로 형변환.
 */

Float(e)
/*
 실수형으로 형변환.
 */

String(a)
print(a)
/*
 문자열로 형변환.
 */

let str2 = "1.05bit"
Int(str2)
let str3 = "1.05"
Float(str3)
/*
 문자열도 다른 숫자관련으로 형변환이 가능하지만,
 형식이 맞지않을 경우 nil을 반환한다.
 */
