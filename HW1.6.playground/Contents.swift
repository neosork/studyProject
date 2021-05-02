import UIKit

//: # Home Work 6

/*:
 ## Задание 1
 1.1 Создайте класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 Необходимо реализовать возможность создания экземпляра класса со значенями по умолчанию для свойств *color* и *taste*. Свойство *radius* должно быть обязательным для инициализации, т.е. не должно быть возможности создания экземпляра класса без радиуса.
 
 Объявите геттер *orangeVolume*, возвращающий объем апельсина. При этом расчет объема необходимо реализовать в методе *calculateOrangeVolume* (число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить).
 
 Создайте экземпляр класса `Orange`, вызвав при этом инициализатор только для радиуса. Остальным свойствам, созданного экземпляра присвойте следующие значения:
 
 - `color` — *Orange*

 - `taste` — *Sweet*
 
 Выведите на консоль сообщение: «Orange has <...> color and <...> taste. The volume of orange is <...>», обращаясь к этим значениям через экземпляр класса.
 */
class Orange {
    var color: String
    var taste: String
    let radius: Double
    
    var orangeVolume: Double {
       calculateOrangeVolume()
    }
    
    func calculateOrangeVolume() -> Double {
        return 3 / 4 * Double.pi * radius
    }
    
    init(radius: Double) {
        self.color = ""
        self.taste = ""
        self.radius = radius
    }
}

let orange = Orange(radius: 5.0)
orange.color = "Orange"
orange.taste = "Sweet"


print("Orange has \(orange.color) color and \(orange.taste) taste. The volume of orange is \(orange.orangeVolume)")
/*:
 ## Задание 2
 2.1 Создайте класс `Shape` (родительский класс) со следующими свойствами:
 
 - `height: Float`
 
 - `width: Float`
 
 - `radius: Float`
 
 - `square: Float`
 
 - `perimeter: Float`
 
 Oбъявите в классе методы `squareOfShape` и `perimeterOfShape` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте отдельный инициализатор для высоты и ширины и отдельный инициализатор для радиуса. Так же создайте свойство `description`, которое должно возвращать сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равен(а) <...>»
 */
class Shape {
    var height: Float
    var width: Float
    var radius: Float
    
    var square: Float {
        squareOfShape()
    }
    var perimeter: Float {
        perimeterOfShape()
    }
    
    var description: String {
        "Площадь фигуры \(String(describing: type(of: self))) равна \(square), периметр (длина) равен(а) \(perimeter)"
    }
    
    func squareOfShape() -> Float {
        return 0.0
    }
    
    func perimeterOfShape() -> Float  {
        return 0.0
    }
    
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
        radius = 0.0
    }
    
    init(radius: Float) {
        self.radius = radius
        width = 0.0
        height = 0.0
    }
}




/*:
 2.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */
class Circle: Shape {
    override func squareOfShape() -> Float {
        Float.pi * (radius * radius)
    }
    
    override func perimeterOfShape() -> Float {
        2 * Float.pi * radius
    }
}

class Rectangle: Shape {
    override func squareOfShape() -> Float {
        height * width
        
    }
    
    override func perimeterOfShape() -> Float {
        (height + width) * 2
    }
}

class Ellipse: Shape {
    var longDiametr: Float
    
    var shortDiametr: Float
    
    override func squareOfShape() -> Float {
         Float.pi * ((longDiametr * shortDiametr) / 4)
    }
    
    override func perimeterOfShape() -> Float {
       2 * Float.pi * sqrt((longDiametr * longDiametr + shortDiametr * shortDiametr) / 8)
    }
    
    init(longDiametr: Float, shortDiametr: Float) {
        self.longDiametr = longDiametr
        self.shortDiametr = shortDiametr
        super.init(height: longDiametr, width: shortDiametr)
    }
    
    
}



//: 2.3 Создайте по экземпляру каждого класса, кроме `Shape` и проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения. Выведите значение свойства `description` на консоль.
let circle = Circle(radius: 5.6)
let rectangle = Rectangle(height: 25, width: 10)
let ellips = Ellipse(longDiametr: 25, shortDiametr: 10)

print(circle.description)
print(rectangle.description)
print(ellips.description)

/*:
 ## Задание 3
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    var salary: Int
    var name: String
    var surname: String 
    
    init(salary: Int, name: String, surname: String){
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}



 
//: 3.2 Создайте массив `names` со следующими именами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` со следующими фамилиями: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*. Массивы должны быть созданы вне класса.
var names = ["John", "Aaron", "Tim", "Ted", "Steven"]
var surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

//: 3.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employees = [Employee]()


for _ in 0...3 {
    let employe = Employee(salary: Int.random(in: 1000...2000), name: names[Int.random(in: 0...4)], surname: surnames[Int.random(in: 0...4)])
    employees.append(employe)
}

//: 3.4 Переберите массив `employees` и выведите информацию по каждому сотруднику в виде: «<имя> <фимилия>’s salary is $<... >»
for employe in employees {
    print("Сотрудник \(employe.name) \(employe.surname) - зарплата $\(employe.salary)")
}


//: 3.5 Создайте еще один массив на основе `employees`, который включает только тех работников, чья зарплата чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4
var employeEven = [Employee]()

for emloye in employees {
    if emloye.salary % 2 == 0 {
        employeEven.append(Employee(salary: emloye.salary, name: emloye.name, surname: emloye.surname))
    }
}

for employe in employeEven {
    print("Сотрудник \(employe.name) \(employe.surname) - зарплата \(employe.salary)")
}
