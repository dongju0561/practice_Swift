import UIKit
/*
 associatedtype operator는 generic에서 나오는 개념 중 하나이다.
 프로토콜을 생성할때 타입을 지정하지 않을 수 있다.
 타입 선정을 프로토콜 사용하는 클래스 혹은 객체에게 정의를 맡길 수 있다.
 */
protocol DJprotocol{
    associatedtype Mytype // generic처럼 당장 타입을 지정하지 않아도 된다.
    
    var name: Mytype{ get } // 변수 name의 타입이 미정인 상태
}

struct dongju: DJprotocol {
    typealias Mytype = String // 타입을 String으로 지정
    
    var name: Mytype{
        return "hello"
    }
}
/*
 where을 통해서 조건을 추가할 수 있다.
 */
var array = [1,2,3,4,5,6,7]

for a in array where a > 5{ //반복문에서 where를 사용 조건이 참이 될 경우에만 아래 코드 실행
    print(a)
}

let anyValue: Any = "aBC"

//where 타입캐스팅 is를 사용하여 조건 추가
switch anyValue {
    case let value where value is String:
    print("value is string")
    case let value where value is Int:
    print("value is Int")
    default:
    print("anyValue")
}

protocol Printable {
    func printSelf()
}
//protocol, extension과 결합
extension Printable where Self: Numeric {
    func printSelf() {
        print("Number Printable")
    }
}

extension Printable {
    func printSelf() {
        print("others")
    }
}

extension Int: Printable {}
extension String: Printable {}

let integer: Int = 12
let string: String = "wow"
integer.printSelf()
string.printSelf()
