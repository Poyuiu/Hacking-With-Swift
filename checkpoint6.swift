struct Car {
    static private var model = "X86"
    static private var seats = 4
    var gear: Int
    init(gear: Int) {
        self.gear = gear
    }
    mutating func AddGear(gear: Int) -> Void {
        if !(1...10).contains(gear) {
            print("Out of range")
            return
        }
        self.gear += gear
    }
    mutating func SubGear(gear: Int) -> Void {
        if !(1...10).contains(gear) {
            print("Out of range")
            return
        }
        self.gear -= gear
    }
    static func ChangeModel(model: String) {
        Self.model = model
    }
    let GetModel = {Car.model}
}

var car = Car(gear: 0)

car.AddGear(gear: 5)

print(car.gear)

car.AddGear(gear: 0)

car.SubGear(gear: 3)

print(car.gear)

print(car.GetModel())

Car.ChangeModel(model: "X64")

print(car.GetModel())
