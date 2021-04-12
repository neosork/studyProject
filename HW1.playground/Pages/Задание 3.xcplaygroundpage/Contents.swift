import Foundation

/*:
 ### Задание 3
 
 Необходимо вычислить площадь и периметр прямоугольного треугольника.
 
 >Условия:
 Катеты прямоугольного треугольника:
 AC = 8.0, CB = 6.0. Гипотенузу треугольника AB вычисляем при помощи функции `sqrt(Double)`, заменив `Double` суммой квадратов катетов
 
 */
var AC = 8.0
var CB = 6.0
var squareHypotenuse = sqrt(AC) + sqrt(CB)
var hypotenuse = squareHypotenuse.squareRoot()
var perimeter = AC + CB + hypotenuse
var square = (AC * CB)/2

print(perimeter)
print(square)

//: [Ранее: Задание 2](@previous) | Задание 3 из 3
