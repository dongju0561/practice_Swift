import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var result = [0,0]
    var distance = 100000000
    var p1 = 0
    var p2 = 0
    var sum = sequence[0]
    
    while(p1 < sequence.count && p2 < sequence.count){
        if(sum == k){
            if(p2 - p1 < distance){
                result = [p1,p2];
                distance = p2 - p1
            }
        }
        if(sum > k){
            sum -= sequence[p1]
            p1 += 1
        }
        else if(sum <=  k){
            p2 += 1
            if(p2 == sequence.count) {break}
            sum += sequence[p2]
        }
    }
    return result
}

print(solution([1, 2, 3, 4, 5], 7))
