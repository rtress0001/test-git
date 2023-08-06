#pizzas = ['pepperoni and olives pizza','pan garlic sauce pepperoni olive pizza'+'pepperoni and sausage pizza']
#for pizza in pizzas:
#   print("I often buy "+pizza.title())
#print("I spend lots of money on pizza")

#deck = ["pikachu","mew","mewtwo","charizard"]
#deck.sort(reverse=True)
#print(deck)

#my_list = ["its","peanut butter","jelly","time"]
#new_word=" "
#for word in my_list:
#    new_word += word + " "
#print(new_word)
#This function outputed 

#my_list = ["chicken wing", "chicken wing","hot dog","bologna","chicken","macaroni"]
#my_string=" "  
#for index in range(len(my_list)):
#    if index == 6:
#        my_string += "chillen' with my homie"
#    my_string[index] = "chicken wing"
#print(my_string) 

#my_list = [1, 3.0, ["a","b",["A","B","C"],"d"], "John"]
#for member in my_list: 
#    if isinstance(member, list):
#        for m in member:
#                if isinstance(m,list):
#                    print(m, end=" ")
#this function outputed the deepest list ["A","B","C"]

#my_list = [1, 3.0, ["a","b",["A","B","C"],"d"], "John"]
#print(my_list[2][2][0])
#This function outputed A

#my_list = ["chicken wing", "chicken wing","hot dog","bologna","chicken","macaroni"]
#for food in my_list:
#    if food == "chicken wing":
#        continue
#    print(food, end=" ")
#This function output hot dog bologna chicken macaroni

my_list = ["chicken wing", "chicken wing","hot dog","bologna","chicken","macaroni"]
for food in my_list:
    if food == "chicken wing":
        break
    print(food, end=" ")
