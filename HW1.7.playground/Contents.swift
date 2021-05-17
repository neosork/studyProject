import UIKit

//: # Home Work 7


/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */
enum CalculationType {
    case addition
    case division
    case subtraction
    case multyply
}


//: 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию с константами и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».
func calculate(firstNum a: Int, secoundNum b: Int, type calcul: CalculationType) -> Int{
    switch calcul {
    case .addition:
        return a + b
    case .division:
        return a / b
    case .subtraction:
        return a - b
    case .multyply:
        return a * b
    
    }
}


//: 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.
print(calculate(firstNum: 4, secoundNum: 5, type: .addition))
print(calculate(firstNum: 4, secoundNum: 5, type: .division))
print(calculate(firstNum: 4, secoundNum: 5, type: .subtraction))
print(calculate(firstNum: 4, secoundNum: 5, type: .multyply))
/*:
 ## Задание 2
 2.1 Создайте перечисление `CurrencyUnit` со следующими кейсами: `rouble`, `dollar`, `euro`.
 
 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountrys`, в котором содержиться перчень стран-эмитентов (USA, Canada, Australia).
 
 Рубль и Евро должны иметь ассоциативный параметры следующего типа: `([String], String)`. Массив должен содеражать перечень стран, в которых катируется валюта, а тип стринг - аббривиатуру валюты.
 
 Доллар должен иметь на один ассоциативный параметр больше, в соответствии с перечислением `DollarCountrys`.
 */
enum CurrencyUnit {
    
    enum DollarCountrys: String {
        case USA = "Доллар США"
        case Canada = "Канадский доллар"
        case Australia = "Австралийский доллар"
    }
    case rouble ([String], String)
    case dollar ([String], String, String)
    case euro ([String], String)
}


/*:

 2.2 Создайте экземпляр `dollarCurrency` и присвойете ему значения относящиеся к доллару.
 */

let dollarCurrency = CurrencyUnit.dollar(["США", "Доминикана", "Куба"], "USD", CurrencyUnit.DollarCountrys.USA.rawValue)


/*: 2.3 Создайте функцию, которая должна принимать валюту и выводить на консоль информацию о ней, например: "Доллар США. Катируется в: США, Доминикана, Куба. Краткое наименование: USD. Для рубля и евро нужно будет определить только список стран и аббривиатуру валюты.
*/
func currencyInfo(_ a: CurrencyUnit) {
    switch a {
    case .rouble(let countrylist, let shortName):
        print("Российский рубль Катируется в \(countrylist). Краткое наименование: \(shortName).")
    case .dollar(let countryList, let shortName, let whoDollar):
        print("\(whoDollar). Катируется в: \(countryList). Краткое наименование: \(shortName).")
    case .euro(let countrylist, let shortName):
        print("Евро Катируется в \(countrylist). Краткое наименование: \(shortName).")
    }
}

currencyInfo(dollarCurrency)
//как убрать квардратные скобки в выводе?))
/*:
 ## Задание 3
 3.1 Создайте структуру `ChessPlayer` со следующими свойствами:
 - `name: String`
 - `wins: Int`
 - `description: String`
 
 Свойство `description` должно возвращать сообщение с именем игрока и количеством его побед.
 
 Так же необходимо реализовать метод `addWins` который должен увеличивать количество побед на переданное в него значение.
  */
struct ChessPlayer {
    var name: String
    var wins: Int
    var description: String {
     "\(name)  \(wins) побед"
    }
    
    mutating func addWins(moreWins a: Int) {
        wins = wins + a
    }
}
/*:
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `addWins`. Снова выведите значение свойства `description` на консоль.
*/
var chessPlayer = ChessPlayer(name: "Игорь Попка", wins: 10)
print(chessPlayer.description)
chessPlayer.addWins(moreWins: 10)
print(chessPlayer.description)
