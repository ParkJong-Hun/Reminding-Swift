import Foundation

let a = 2

if a < 3 {
    print("3보다 작은 수다!")
}
/*
 조건식이 참이면 다음 식을 실행.
 */

if a > 3 {
    print("3보다 작은 수다!")
} else {
    print("3보다 큰 수다!")
}
/*
 조건식이 참이면 다음 식을 실행하고, 거짓이면 else 다음 식을 실행.
 */

if a > 5 {
    print("5보다 큰 수다!")
} else if a > 1 {
    print("1보다 큰 수다!")
} else {
    print("양수가 아니다")
}
/*
 조건식이 참이면 다음 식을 실행,
 다음 조건식이 참이면 다음 식을 실행,
 그것도 아니면 else 다음 식을 실행.
 */

var b: Int? = 3
if let realB = b {
    print("\(realB)는 nil이 아니다!")
}
/*
 nil이 아니면 다음 식에서 optional 변수(혹은 상수)를 nil이 될 수 없는 변수(혹은 상수)로 바꿔서 사용할 수 있다.
 */

//guard b != nil else {
//    print("b는 nil이 아니므로 출력됩니다!!")
//    return
//}
/*
 거짓일 경우 다음 식을 실행. 반드시 return이나 throw를 해주어야 함.
 (즉 함수 내에서 사용 가능)
 */

//guard let value = b else {
//    return print("nil이므로 해당 프로그램을 종료합니다.")
//}
/*
 함수의 전체적인 부분에서 사용할 변수를 언래핑할 때도 사용.
 */

enum FooState {
    case None
    case Loading
    case Progress
    case Complete
    case Error
}
/*
 주로 종류나 상태를 관리할 때 사용.
 case가 enum의 하나의 제한된 값이 됨.
 */

var state: FooState?
func FooAction() {
    state = .None //액션 시작을 의미
    repeat {
        switch state {
        case .None:
            "액션 시작"
            state = .Loading
            break
        case .Loading:
            "로딩중"
            state = .Progress
            break
        case .Progress:
            "작업 진행중"
            if Int.random(in: 0...5) < 1 {
                state = .Error
            } else {
                state = .Complete
            }
            break
        case .Complete:
            "작업 성공적으로 완료"
            break
        case .Error:
            "작업 중 에러 발생"
            break
        case nil:
            break
        }
    } while (!(state == .Complete || state == .Error))
    print("액션결과: \(state!)")
    state = nil
}
/*
 Switch는 주로 적은 경우의 수에 대해 가독성 좋게 조건문을 작성할 필요가 있을 때 사용.
 switch의 식이 어떠한 case와 일치할 경우 다음 break까지의 식을 실행.
 */
FooAction()
