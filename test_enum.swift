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
enum Azimuth {
    case north(Int)
    case south(Int)
    case east(Int)
    case west(Int)
}

var north = Azimuth.north(0)
var south = Azimuth.south(1)
var east = Azimuth.east(2)
var west = Azimuth.west(3)

print(north) // north(0)


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