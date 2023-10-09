class TestA{
    //인스턴스 메서드는 인스턴스를 생성해야만 사용할 수 있다.
    func instanceFunc(){
        print("A: instanceFunc")
    }
    //final func는 인스턴스 메서드로서 override가 불가능하다.
    final func finalFunc(){
        print("finalFunc")
    }
    //class func는 타입 메서드로서 override가 가능하다.
    class func classFunc(){
        print("A: classFunc")
    }
    //static func는 타입 메서드로서 override가 불가능하다.
    static func staticFunc(){
        print("staticFunc")
    }
    //final class func는 타입 메서드로서 override가 불가능하다.
    //static func와 동일하게 동작한다.
    final class func finalClassFunc(){
        print("finalClassFunc")
    }
}

class TestB: TestA{
    //override func는 override가 가능한 인스턴스 메서드이다.
    override func instanceFunc(){
        print("B: instanceFunc")
    }
    //override func는 override가 가능한 타입 메서드이다.
    override class func classFunc(){
        print("B: classFunc")
    }
    override static func는 override가 불가능한 타입 메서드이다.
    override static func staticFunc(){
        print("staticFunc")
    }
    override final class func는 override가 불가능한 타입 메서드이다.
    override final class func finalClassFunc(){
        print("finalClassFunc")
    }
}

let testA = TestA()
let testB = TestB()
print("=====instanceFunc=====")
testA.instanceFunc()
testB.instanceFunc()
testA.finalFunc()
print("======================", terminator:"\n\n")
print("=====typeFunc=========")
TestA.classFunc()
TestB.classFunc()
TestA.staticFunc()
TestA.finalClassFunc()
print("======================")



