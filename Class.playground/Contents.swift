import UIKit
import Foundation

class GasStation{
    var costDisel: Int // 클래스의 프로퍼티
    var costGasolin: Int
    var totalGas: Int{ // 연산 프로퍼티
        get{
            return costDisel + costGasolin
        }
    }
    init(costDisel: Int, costGasolin: Int){ // 생성자 생성시 디젤 가격과, 가솔린 가격 초기화
        self.costDisel = costDisel
        self.costGasolin = costGasolin
    }
    
    func howMuch(select: String, mount: Int) -> Int{ // 클래스의 메소드눈 문자열과 정수를 인자로 받아 int형태로 반환
        if(select == "Disel"){
            return mount * costDisel
        }
        else if(select == "Gasolin"){
            return mount * costGasolin
        }
        else{
            return 0
        }
    }
    
}

var huamGasStation = GasStation(costDisel: 1700, costGasolin: 1500)

var price = huamGasStation.howMuch(select: "Disel", mount: 50)
print(huamGasStation.totalGas)

print(price)

