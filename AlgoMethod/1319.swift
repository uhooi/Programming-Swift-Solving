import Foundation

func areaOfCircle(withRadius radius: Double) -> Double {
    let pi = 3.14
    return pi * pow(radius, 2)
}

print(areaOfCircle(withRadius: 3))
print(areaOfCircle(withRadius: 5))
print(areaOfCircle(withRadius: 10))
print(areaOfCircle(withRadius: 15))
