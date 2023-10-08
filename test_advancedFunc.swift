//====================================
//parametor default value(파라미터 기본값)
func test_defaultValue(_ name:String = "default", _ age:Int = 0) {
    print("name: \(name), age: \(age)")
}

test_defaultValue("kim", 20)
test_defaultValue("lee")

/*
파라미터에 기본값을 설정할 수 있다.
함수를 호출할 때 파라미터를 생략하면 기본값이 사용된다.
기본값은 대체적으로 파라미터의 뒤쪽에 위치시킨다.
*/

//====================================
//parametor label(파라미터 레이블)
func test_label(from place1: String,to  place2: String) {
    print("나는 \(place1)에서 \(place2)까지 간다.")
}

test_label(from: "학교", to: "집")

/*
파라미터 레이블은 함수를 호출할 때 파라미터의 의미를 명확히 하기 위해 사용한다.
파라미터 레이블은 파라미터 이름 앞에 작성한다.
파라미터 레이블은 함수 내부에서 사용되지 않는다.
파라미터 레이블은 함수를 호출할 때 사용된다.
*/