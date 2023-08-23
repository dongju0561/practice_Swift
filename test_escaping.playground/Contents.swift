import UIKit

class TestEscaping{
    var completionhandler: (()->Void)? = nil
    
    func v(a: String, b: String,  completion: ()->Void) {
        DispatchQueue.main.async {
            Thread.sleep(forTimeInterval: 2.0)
            completion()//error!
            //함수가 반환을 한 이후에 클로져가 실행이 되어야 한다. 이때 함수가 수행을 마친 이후에도 클로져에 대한 정보를 유지해야하므로 escaping closure로 등록해야됨
        }
    }
    
    func sodeul(  completion:  () -> Void) {
        completionhandler = completion //error!
        //클로져를 변수에 할당한다는거 자체가 함수 외부에서 클로져를 사용할 가능성이 존재한다고 판단, escaping closure로 등록해야됨
    }
}
/*
 non escaping order
 completion실행 -> 함수 반환
 
 escaping order
 함수 반환 -> completion실행
 
 함수 내부에서 변수에 클로져를 할당해도 @escaping 처리를 해줘야됨
 변수에 클로져를 할당하는거 자체가 함수 외부에서 사용할 수 있는 가능성이 존재한다고 판단하여 escaping closure로 간주
 */






 
