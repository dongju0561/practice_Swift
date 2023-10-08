//==================================================
//enum basic
enum Azimuth {
    case north
    case south
    case east
    case west
}

/*
이렇게도 표현이 가능
enum Azimuth {
    case north, south, east, west
}
*/

//==================================================

//raw value Int
enum Movie: Int{
    case romance
    case thriller
    case action
    case horror
}

print(Movie.horror.rawValue) // 3
//==================================================

//raw value String
enum Azimuth: String{
	case north = "north"
    case south = "south"
	case east = "east"
	case west = "west"
}
//==================================================
//associated value
enum Weather{
	case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

let yesterdayWeather = Weather.windy(speed: 5)
let todayWeather = Weather.rainy(chance: 90, amount: 10)
let tomorrowWeather = Weather.sunny

switch todayWeather {
    case .sunny:
        print("맑음")
    case .windy(let speed):
        print("바람 \(speed)m/s")
    case .rainy(let chance, let amount):
        print("비 \(chance)% \(amount)mm")
}



//==================================================
//case Iterable
enum Direction: CaseIterable{
    case north
    case south
    case east
    case west
}

let allCase = Direction.allCases

for dir in allCase{
    print(dir)
}
/*
출력:
north
south
east
west
*/
//==================================================

//Comparable enum
enum Condition: Comparable {
    case bad
    case soso
    case good
}

let bad = Condition.bad
let soso = Condition.soso
let good = Condition.good

print(bad < soso)// true
print(soso < good)// true
print(good < bad)// false
//==================================================