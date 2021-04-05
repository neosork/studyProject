class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}




class Square: NamedShape {
    var sideLendth: Double
    init(sideLendth: Double, name: String) {
        self.sideLendth = sideLendth
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLendth * sideLendth
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLendth)"
    }
}

let test = Square(sideLendth: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func Area() -> Double {
        var rad: Double
        rad = 3.14 * (radius * radius)
        return rad
    }
    
    override func simpleDescription() -> String {
        return "A square with radius \(radius)"
    }
}
let test2 = Circle(radius: 3.4, name: "Krug")
test2.Area()
test2.simpleDescription()
