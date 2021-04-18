import UIKit

//: # Home Work 2

/*:
 ## Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте им следующие значения: 3.14 и 42.0
 
 1.2 Присвойте результат сложения ваших свойств новому свойству с типом `Double`
 
 1.3 Выведите результат на консоль. Обратите внимание на значение результата.
 */
let first: Float = 3.14
let second: Float = 42.0
let third = Double(first) + Double(second)
print(third)


/*:
 ## Задание 2
 2.1 Создайте свойство `numberOne` и присвойте ему любое положительное целочисленное значение
 
 2.2 Создайте свойство `numberTwo` и присвойте ему любое положительное значение меньше `numberOne`
 
 2.3 Создайте свойство `result` и присвойте ему результат деления `numberOne` на `numberTwo`
 
 2.4 Создайте свойство `remainder` и присвойте ему остаток от деления `numberOne` на `numberTwo`
 
 2.5 Выведите на консоль фразу: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 
 2.6 Выведите на консоль еще одну фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». В математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (здесь мы используем стандартную математическую запись в тексте, а не оператор деления). На консоль необходимо вывести именно такой результат в виде натуральной дроби. Пример: «Результат деления 7 на 3 равен 2 1/3».
 
 */
let numberOne = 5
let numberTwo = 3

let result = numberOne / numberTwo
let reminder = numberOne % numberTwo
print("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(reminder)")
print("Результат деления \(numberOne) на \(numberTwo) равен \(result) \(reminder)/\(numberTwo)")
/*:
 ## Задание 3
 3.1 Объявите свойство `dayOfBirth` и присвоейте ему дату вашего рождения
 
 3.2 Объявите свойство `monthOfBirth` и присвоейте ему месяц вашего рождения
 
 3.3 Объявите свойство `yearOfBirth` и присвоейте ему год вашего рождения
 
 3.4 Необходимо рассчитать прожитое время с момента вашего рождения по текущую дату в разных единицах измерения (в годах, в месяцах, в днях и в секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года учитывать не надо. Пусть среднее количество дней в месяце будет 30, а количество дней в году 360. Создайте все необходимые свойста, которые вам понадобятся для решения данной задачи. Для расчета всех необходимых величин используйте только арифметические операторы. Ни каких функций и условных операторов if-else использовать не нужно.
 
 3.5 Выведите результат вычислений на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Пример: если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: **39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth**.
 
 *3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте условный оператор if
 */
let dayOfBirth = 26
let monthOfBirth = 3
let yearOfBirth = 1992

let dayOfNow = 15
let monthOfNow = 4
let yearOfNow = 2021

let reminderOfYear = monthOfNow * 30 - (30 - dayOfNow)
let reminderOfYearInBirth = monthOfBirth * 30 - (30 - dayOfBirth)
let allDay = (yearOfNow - yearOfBirth) * 360  + (reminderOfYear - reminderOfYearInBirth)

let allYear = allDay / 360
let allSeconds = allDay * 86400
let allMonth = allDay / 30
//3.5
print("\(allYear) years, \(allMonth) months, \(allDay) days and \(allSeconds) seconds have passed since my birth")
let quarter: String

//3.6

switch monthOfBirth {
case (1...3):
    print("первый квартал ")
case (4...6):
    print("второй квартал")
case (7...9):
    print("третий квартал")
case (10...12):
    print("четвертый квартал")
default:
    print("Вовсе не номер месяца")
}
//НИХАЧУ ИФ ЭЛС - свитч красивее) пускай будет ошибка)
//ну со звёздочкой же, я правда знаю как это все иф элсить)
//простите что ослушался указаний как правильно сделать)

if 1...3 ~= monthOfBirth {
    print("первый квартал ")
} else if 4...6 ~= monthOfBirth {
    print("второй квартал ")
} else if 7...9 ~= monthOfBirth {
    print("третий квартал ")
} else if 10...12 ~= monthOfBirth {
    print("четвертый квартал")
} else { print("вовсе не квартал")}

/*:
 ### Задание 4
 Задание на вашу способность гуглить. Необходимо вычислить синус от числа 1 и округлить результат до тысячных. Для получания результата радианы искать не надо. Достаточно найти нужную функцию и она все сделает за вас.
 > Подсказка: в результате должно получиться 0.841
 */
let sinus = sin(1.0)
let sinusNeed = (round(1000 * sinus) / 1000)
print(sinusNeed)

enum MyEnum: Int {
    case first = 1
}

func returnValue(value: MyEnum) -> Int {
    value.rawValue
}

returnValue(value: .first)


enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue


func compare(first: Rank, second: Rank) -> Bool {
    first.rawValue < second.rawValue
}


compare(first: .ace, second: .five)

