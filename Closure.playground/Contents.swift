/*
 closure를 이해하기 위해, argumen
 */
import UIKit

var listInt : [Int] = [2,1,3,4]
var a : Int = 1

func cmp(i1:Int, i2:Int)->Bool{
    return i1 > i2
}

listInt = listInt.sorted(by: cmp(i1:i2:))
//위아래 코드 모두 같은 동작을 하는 코드이다. 하지만 밑에 코드는 클로저를 사용하여 코드를 작성하였다.
listInt = listInt.sorted(by: { a1,a2 in
    return a1>a2
})

print(listInt)

//---------------------------------------------------------------------------

func function1(_ num : Int, argu : (_ argu1 : Int)->Int){
    let result = num + argu(4)
    print(result)
}

function1(2) { argu1 in
    return argu1+argu1
}


//활용 : 리스트에서 클로저에 조건에 따라 값 출력(큰 값, 작은 값)

var numberList = [2,1,3,4]

func cmpNum(numList : [Int],by closure : (_ n1 : Int,_ n2 : Int) -> Bool){
    
    var max = numList[0]
    
    for num in numList{
        if(closure(num,max)){
            max = num
        }
    }
    print(max)
}

cmpNum(numList: numberList) { n1, n2 in
    return n1>n2
}
//---------------------------------------------------------------------------
