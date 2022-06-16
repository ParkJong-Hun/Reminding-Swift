import Foundation

if true {
    print("it was true")
}
/*
 참이면 다음 식을 실행.
 */

for i in 0 ... 5 {
    print(i)
}
/*
 변수 i를 선언.
 in scope 좌측 값부터 시작해 우측값보다 같거나 작을 때까지 1씩 증가하면서 식을 실행.
 */

for i in 0 ..< 5 {
    print(i)
}
/*
 scope 우측 값보다 작으면 다음 식을 실행.
 */

var a = [0, 1, 2, 3]
for i in a {
    print(i)
}
/*
 배열의 요소 첫번째부터 마지막까지 i에 대입해 다음 식을 실행.
 */

for i in stride(from: 3, to: 0, by: -1) {
    print("a : \(i)")
}
/*
 from을 초기값으로 to가 될 때까지 by를 i에 연산해 식을 실행. to보다 작아지면 탈출. -연산이 아니면 실행 안함.
 to = >, throuh = >=
 */

var x = 0
while x <= 3 {
    print(x)
    x += 1
}
/*
 조건식이 참이면 다음 식을 실행.
 */

repeat {
    print(x)
    x -= 1
} while x >= 0
/*
 일단 식을 실행하고, 다음에 조건식이 참이면 다시 해당 식을 실행.
 */

func foo() {
    print("호출되었다!")
}
foo()
/*
 void형 함수 선언 및 호출.
 */

func foo1(x: Int, y: Int) {
    print(x + y)
}
foo1(x: 3, y: 4)
/*
 매개변수를 사용하는 void형 함수 선언 및 호출.
 */

func foo2(a: Int, b: Int) -> Int {
    return a * b
}
foo2(a: 2, b: 3)
/*
 매개변수를 사용하는 정수형 함수 선언 및 호출.
 정수형 함수이므로 정수형 값을 반환함.
 */

func foo3(e: Int, f: (Int, Int) -> Int) -> Int {
    return f(e, e)
}
foo3(e: 10, f: { (a: Int, b: Int) -> Int in a + b - 3 * a })
/*
 클로저(익명함수)를 파라미터로 사용하는 고차함수.
 */

func foo4(_ a: Int) {
    return print(a)
}
foo4(3)
/*
 _는 함수 호출시 매개변수 이름 입력을 생략가능하게 됨.
 */

class Car {
    let wheelCount: Int
    let maker: String
    
    func drive() {
        print("주행을 시작함.")
    }
    
    init(wheelCount: Int, maker:String) {
        self.wheelCount = wheelCount
        self.maker = maker
    }
}
let car1 = Car(wheelCount: 2, maker: "Ramborugini")
/*
 기본적인 클래스 선언 및 오브젝트(인스턴스) 생성
 */

class PMW: Car {
    let autoDrivingMode: Bool
    
    override func drive() {
        print("빠른 주행을 시작함.")
    }
    
    init(wheelCount: Int, maker: String, autoDrivingMode: Bool) {
        self.autoDrivingMode = autoDrivingMode
        super.init(wheelCount: wheelCount, maker: maker)
    }
}
let car2 = PMW(wheelCount: 4, maker: "Park", autoDrivingMode: true)
/*
 상속받은 클래스 선언 및 오버라이딩 구현.
 상속받은 경우, 기본적으로 부모 클래스의 모든 프로퍼티와 메소드를 사용할 수 있음.
 오버라이딩을 통해, 독자적으로 바꿀 수 있음.
 */

protocol Vehicle {
    var wheelCount: Int { get }
    
    func drive()
}
/*
 인터페이스와 비슷.
 선언은 해놓고 구현은 하지 않음.
 이 것을 구현하는 것은 class와 struct의 몫.
 단, 꼭 구현해야 함.
 */

class Hundai: Vehicle {
    var wheelCount: Int
    let maker: String = "Josh"
    
    func drive() {
       print("어쩔 수 없이 주행")
    }
    
    init(wheelCount: Int) {
        self.wheelCount = wheelCount
    }
}

struct Pord: Vehicle {
    let wheelCount: Int = 4
    
    func drive() {
        print("특별한 주행")
    }
}
let car3 = Pord()
car3.drive()
/*
 struct는 class에게서 상속 불가능. protocol로 구현은 가능..
 call by reference가 아닌 call by value.
 */
