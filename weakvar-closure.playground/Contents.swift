import Foundation

class Car {
    var engine: Engine?
}
class Engine {
    weak var matrixCar: Car?
}
let superCar = Car()
let niceEngine = Engine()
superCar.engine = niceEngine
niceEngine.matrixCar = superCar
/*
 weak var는 약한 참조를 사용하는 변수 선언을 의미한다.
 일반적인 var는 강한 참조.
 강한 참조는 약한 참조에 종속적이지 않고, 약한 참조는 강한 참조에 종속적.
 무한 참조를 막는 역할을 한다.
 위의 weak var를 사용하지 않으면 RC가 계속 증가해 nil이 될 수 없으므로 무한 참조 상태가 됨.
 */

let anonymousMethodObject: ((Int) -> String) = { number in
    return "넘긴 파라미터는 \(number)입니다!"
}
/*
 클로저 정의.
 일회용 함수(익명 함수 혹은 람다 함수).
 클로저는 이렇게 상수(혹은 변수)에 값으로서 지정하여 일회용 오브젝트를 만들 수도 있고, 다른 함수의 파라미터로 사용할 수도 있다.
 함수를 여러번 사용하지 않을 경우 일회용으로 만들어서 쓸 수 있는 장점이 있다.
 */
