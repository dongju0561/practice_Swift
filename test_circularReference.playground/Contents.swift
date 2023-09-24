/*
    circular reference
    서로 다른 객체가 강한 참조로 서로 연결할때, 순환참조가 발생
    순환 참조가 발생하게 된다면, 서로가 서로를 참조하고 있기 때문에 객체들의 메모리 해지가 일어나지 않게 되어 메모리 누수가 발생
 */

class Person{
    var name: String
    init(name: String) {
        self.name = name
    }
    var apartment: Apartment?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment{
    var unit: String
    init(unit: String) {
        self.unit = unit
    }
    var tenant: Person?
    
    deinit {
        print("\(unit) is being deinitialized")
    }
}

var john: Person? = Person(name: "john")
var unit4A: Apartment? = Apartment(unit: "unit4A")

john?.apartment = unit4A
unit4A?.tenant = john

john = nil
unit4A = nil





