import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let resultsGames = ["3:6", "5:5", "N/A", "2:1", "3:3", "1:2"]
let dictionaryCommand = ["Салават Юлаев": resultsGames[0...2], "Авангард": resultsGames[3...3], "АкБарс": resultsGames[4...5]]

for (key, value) in dictionaryCommand {
    for item in value {
        print("Игра с \(key) - \(item)")
    }
}

//я проверил соотношения команда - счет верные, но они выводится в разнобой, не совсем понимаю почему, хотя понял я же дергаю из кучи)
/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. Вызовите функцию и передайте в неё кошелек с деньгами. В кошельке могут храниться купюры различного достоинства от 50 до 5000 рублей.
 */

func cashCount (cash: Int...) -> Int {
    var sum = 0
    for cash in cash {
        sum += cash
    }
    return sum
}

cashCount(cash: 500, 100, 1000, 5000)
print(cashCount(cash: 500, 100, 1000, 5000))

// задание "Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке" - это значит передали кучу параметров и оно все сложило? тогда зачем указание вида купюр ?

/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
func compare (_ a: Int) -> Bool {
    a % 2 == 0
}
print(compare(6))


/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/
func devisionByThree (_ a: Int) -> Bool {
    a % 3 == 0
}
print(devisionByThree(6))


/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложить задание, то можете возвращать несортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответсвовать количеству элементов заданного интервала.
 */
func makeArray (_ a: Int, _ b: Int) -> [Int] {
    var array = [a]
    var number = a
    while (number < b) {
        number += 1
        array.append(number)
    }
    return array.shuffled()
}

makeArray(1, 100)

/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */
let lastArray = makeArray(1, 100)


/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива и отфильтруйте при помощи неё массив из задания **3.4**. Функция должна возвращать новый массив без четных чисел или без чисел, кратных трем. Для определения фильтруемых значений используейте ранее созданные функции из заданий **3.1** и **3.2**.
 */
func filter (_ a: [Int]) -> [Int] {
    var newArray: [Int] = []
    for num in a{
        if !devisionByThree(num) && !compare(num){
            newArray.append(num)
        }
    }
    
    return newArray
}

print(filter(lastArray.sorted()))
print(filter(lastArray).count)
//вывел все что не делится на 3 и не делится на 2, забавно что таких чисел всего 33)



