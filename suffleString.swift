/*
문자열 섞기
https://school.programmers.co.kr/learn/courses/30/lessons/181942

사용한 메소드
String.indices = string의 index들을 return 해줌
String.append() = 인자로 전달되 문자열을 삽입해줌
*/

import Foundation

func solution(_ str1:String, _ str2:String) -> String {
    var result = ""
    for n in str1.indices{
        result.append(str1[n])
        result.append(str2[n])
    }
    return result
}