car = { type: "sedan",
        color: "blue",
        mileage: 80_000
}
car.store(:year, 2003)

# or car[:year] = 2003

p car