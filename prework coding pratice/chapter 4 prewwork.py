magicians = ['alice', 'david','carolina']
for magician in magicians:
    print(magician.title() + " That was a great trick")
    print("I can't wait to see your next trick, "+ magician.title())

print("That was a great show today")

pizzas = ['pepperoni and olives pizza','pan garlic sauce pepperoni olive pizza'+'pepperoni and sausage pizza']
for pizza in pizzas:
    print("I often buy "+pizza.title())
print("I spend lots of money on pizza")

pets = ['cat','dog','bird']
for pet in pets:
    print("These "+ pet + " are so cute.")

print("We love our animals")

for value in list(range(1,21)):
    print(value)

for value in range(0,19,2):
    print(value+1)

for value in list(range(1,11)):
    print(3*value)

for value in list(range(1,11)):
    print(value**3)

addsum=list(range(1,10000001))
print(sum(addsum))  