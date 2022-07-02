import Foundation

let a = 2
let b = 3
let c = a > b ? -1 : 1
/*
 삼항 연산자.
 if else와 동일한 역할을 하는데 더욱 코드를 짧게 사용이 가능.
 ?의 왼쪽 항은 조건식, 그 다음은 참일 경우 실행하는 식, 그 다음은 거짓일 경우 실행하는 식.
 */

a > 0 || b > 0 ? print("둘 다 정수") : print("둘 다 음수")
/*
 보통은 return이나 대입문 처럼 딱 하나의 값이 올 때 사용하지만 이 처럼 다른 함수를 실행할 수 있음.
 */

//a > 0 || b > 0 ? { print("둘 다 정수") print("a = \(a) b = \(b)")} : {print("둘 다 음수") print("a = \(a) b = \(b)")}
/*
 이런식으로 { } 사용은 불가능.
 */

func recursiveFunc(num : Int){
    print("\(num)")
    if(num < 50) {
        recursiveFunc(num: num + 1)
    }
}
/*
 재귀 함수.
 함수 안에서 또 같은 함수를 실행하게 함.
 */

func add(x: Int, y: Int) -> Int {
    let result = x + y
    print(result)
    if result == 50 {
        return 0
    }
    return add(x: result, y: 1)
}
add(x: 3, y: 4)
/*
 재귀 함수는 조건을 제대로 명시하지 않으면 무한루프가 될 수 있음.
 */
