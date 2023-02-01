import UIKit
/*
 convenience init은 designated init(일반 init)를 보조해주는 operator이다.
 convenience init를 사용해서 객체를 만들 경우 초기화시에 프로퍼티의 일부분만 입력을 받고 나머지는
 기본값으로 입력되어 생성자가 생성된다.
 */

import Foundation

class A{
    var name: String = ""
    var age: Int = 0
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    convenience init(age: Int){ //
        self.init(name: "dongju", age: age )
    }
}
