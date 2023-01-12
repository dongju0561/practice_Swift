import UIKit
import Foundation

class GasStation{
    var costDisel: Int
    var costGasolin: Int
    var totalGas: Int{
        get{
            return costDisel + costGasolin
        }
    }
    init(costDisel: Int, costGasolin: Int){
        self.costDisel = costDisel
        self.costGasolin = costGasolin
    }
    
    func howMuch(select: String, mount: Int) -> Int{
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

