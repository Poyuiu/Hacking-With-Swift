protocol Building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var agent: String {get}
}

extension Building {
    func summary() {
        print("This building has \(rooms) rooms.")
        print("This building costs \(cost) dollars.")
        print("\(agent) sells this building.")
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent = "Yom"
}

var house = House(rooms: 4, cost: 100, agent: "Tommy")
house.cost = 1000000000000000000
house.summary()

let office = Office(rooms: 400, cost: 9999)

office.summary()
