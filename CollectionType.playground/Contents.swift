/*
 reference: https://jusung.gitbook.io/the-swift-language-guide/language-guide/04-collection-types
 
 collection type
 3가지 종류 콜랙션 타입
 
 array, set, dictionary
 
*/
import UIKit


//array
var array: [Int] = [1,2,3] // Int 타입의 값을 담는 배열 변수 선언
print(array)
//print: [1,2,3]

array.append(4) // 기존 배열에 정수 4를 배열 뒤쪽에 첨부
print(array)
//print: [1,2,3,4]

array = [] // 빈 배열을 할당
print(array)
//print: []

array = [1,2,3]
var repeatArray = Array(repeating: 1, count: 3) // repeating의 인자값을 가지고 count 인자값 만큼 반복 append한다
print(repeatArray)

print(array + repeatArray) // + 연산자를 가지고 두개의 배열을 하나의 배열로 합칠 수 있다.
//print: [1, 2, 3, 1, 1, 1]

print(array.count) // count()메소트를 이용해서 해당 배열의 갯수를 반환받을 수 있다.
//print: 3

if(array.isEmpty) { // isEmpty()메소드느 배열이 비워져있는 Bool형태로 반환하는 메소드이다.
    print("yes")
}
else {
    print("no")
}
array = [1,2,3,4,5,6,7]
// index 두번째부터 세번째까지에 뒤에 값을 할당
array[1...2] = [3,2]
print(array)
//print: [1, 3, 2, 4, 5, 6, 7]

// 뒤에 값을 갯수가 배열의 범위보다 적게 된다면 적은만큼 값을 제거하고 값을 할당한다.
array[0...2] = [3,2]
print(array)
//print: [3, 2, 4, 5, 6, 7]

array.insert(4, at: 0) // at 인자값은 index를 의미한다 해당 index에 첫번째 인자값을 삽입한다.
print(array)
//print: [4, 3, 2, 4, 5, 6, 7]

array.remove(at: 0)// at 인자값는 index를 의미하며, 해당 index의 값을 제거한다.
array.removeLast() // 해당 배열의 가장 큰 index에 할당된 값을 제거한다.

//배열과 반복문
//enumerated 메소드는 배열의 index와 value가 필요할때 사용하는 메소드이다.
for num in array.enumerated(){ // 특정 형태로 index 정보와 value 정보를 전달 받을 수 있다.
    print(num)
}
for (index,value) in array.enumerated(){ // 소괄호 안에 첫번째 변수에 index, 두번째 변수에는 value를 할당한다.
    print(index)
    print(value)
}

//literal 타입도 배열 요소로 할당할 수 있다.









/*
 struct a{
     init?<T>(repeating: T, count: Int){
         var array: [T]?
         
         for _ in 0..<count{
             array?.append(repeating)
             
         guard let safeArray: [T] = array else {return nil}
         print(type(of: safeArray))
         
         }
     }
 }
 var aS = a(repeating: 1, count: 3)
 */
