#function code to answer question 7.1
#rental_car = input("what car would you like?")
#print("lets see if I can find out a "+rental_car+".")

#question promt
#seats = input("how many seats do you need today")
#data conversion
#seats = int(seats)

#if statement for seats required more than 8

#if seats > 7:
#    print("you have to wait to be seated ")
#else:
#    print("Your table is ready please come with me ")

#ask the user for input to ask answer a question
#num = input("I tell you if a number is a mutiple of ten ")
#data conversion
#num = int(num)
#if statement to answer the promt

#if num % 10 == 0:
#    print("Its a mutiple of ten")
#else:
#    print("its not a mutiple of ten")

#writing a while loop

#current_number = 1
#while current_number <= 5:
#    print(current_number)
#    current_number += 1

# User informed while loop

#promt = "tell me something and I will repeated it back to you"
#promt += "\nExit the program by typing quit "

#creating a var to store the users message
#message = ''
# a while loop that breaks under quit
#while message != 'quit':
#    message = input(promt)
#    if message != 'quit':
#    print(message)

# declaring a prompt to simply the program
#promt = "tell me something and I will repeated it back to you"
#promt += "\nExit the program by typing quit "

#creating a flag to use for our while loop
#active = True
#a while loop that breaks under quit
#while active == True:
#    message = input(promt)
#    if message == 'quit':
#        active = False
#    else:
#        print(message)

# declaring promt for use inout
#promt = "tell me the names of cities you visted"
#promt += "\nWhen your out of cities type quit"

#creating a while loop that uses a break command
#while True:
#    city = input(promt)
#    if city == 'quit':
#        break
#    else:
#       print("I would love to go to "+ city"!")

# Using a continue in while loop to cause it to return to the top of the loop

#current_number = 0

#while current_number < 10:
#    current_number += 1
##    if current_number % 2 == 0:
#        continue
#    else: 
#        print(current_number)

# Tell me the toppings to add to a pizza for 7.4
#promt = "Tell me the toppings to had to your pizza"
#promt += "\ntype quit to start making the pizza"

#message = " "

#print(promt)
#while message != "quit":
#    message = input()
#    if message != "quit":
#        print("adding the topping "+message+"!")
#    else:
#        print("finished with your pizza")
    
# Movie Tickets ask a question about age to determine the price of movie tickes
# 3 under free, 3 to 12 $10, 12 and older $15

#print("tell me your age and I tell your price")
#print("\n enter age or quit to exit")#
#message = " "
#total = 0
#while message !="quit":
#    message = input( "\nenter age or quit to exit")
#    if message == "quit":
#        break
#    if int(message) < 3:
#        print("Free")
#    elif int(message) < 12:
#        print("$10")
#        total += 10
#    else:
#        print("$15")
#        total += 15

#print("your total is $"+str(total))


#print("tell me your age and I tell your price")
#print("\n enter age or quit to exit")
#message = " "
#active = True
#total = 0
#while active:
#    message = input( "\nenter age or quit to exit")
#    if message == "quit":
#        active == False
#    if int(message) < 3:
#        print("Free")
#        total += 0
#    elif int(message) < 12:
#        print("$10")
#        total += 10
#    else:
#        print("$15")
#        total += 15
#
#print("your total is $"+str(total))


# Making a list of order samwiches to move to another list of finished

#unfinished_orders = ['spicy','mild','extra meaty']
#finished_orders = []

#popping one item for the list untill the list is empty
#while unfinished_orders: 
#    making_order = unfinished_orders.pop()

#    print("finsihing order " + making_order + "!")

#    finished_orders.append(making_order)

#Displaying the new list of finished order
#for finished_order in finished_orders:
#    print("The order of "+finished_order+"!")


#unfinished_orders = ['spicy','mild','extra meaty','pastrimi','pastrimi','pastrimi']

#print(unfinished_orders)

#while 'pastrimi' in unfinished_orders:
    #unfinished_orders.remove('pastrimi')

#print(unfinished_orders)

#Write a piece of code that is for uses a dictionary for name and thier dream vacation location
#responses={}
#set flag
#polling_active = True

#creating a while loop to keep asking the user name for questions
#while polling_active:
#    name = input("what is your name ")
#   response = input("where is your favorite dream location ")

    #storing in the dictonary
#    responses[name]=response

    #ask another peron to continue
#    repeat = input("another person to add to the poll ")
#    print("\n say yes or no")
#    if repeat == "no":
#        polling_active = False 
#The dictonary printied

#for name , response in responses.items():
#    print("The person "+ name + "would like to vist " + response + "!" )

#That completes the chapter 7 now for lecuture notes:

#This creates an infilte loop becuase for num in range doesnt increase 
#num = 1
#new_num = 0

#while num < 10:
#    for num in range(3):
#        new_num +=1
#    num += 2

#print(new_num)

#final question output = loop breaks in one pass
#i = 6
#while i <= 10:
#    for j in range(3):
#        i *= j + 2
#        print(j, end = " ")
#       break

#infinite loop
#number = 3
#while number < 5:
#    print(number)

#This code produces an error due to cannot do imput for age
#age = input("what is your age ")

#while age < 20:
#    age +=1
#
#   print(age)


# This code question start at 13, but age -= before printing hence changing a question
#age = int(input("what is your age "))
#
#while age > 10:
#    age -= 1
#    print(age, end=" ")

#infinitly repeating code
#while True:
#    print("my ", end =" ")
#    print("name", end = ' ')
#    print("is", end = " ")
#    continue

# This code does not run
#while False:
#    print("my ", end =" ")
#    print("name", end = ' ')
#    print("is", end = " ")
#    continue

#This code breaks after one cycle
#age = 13
#while age > 10: 
#    print("you are too old!", end=" ")
#    if age == 13:
#        break
#    age += 1

#Complex looping to print a statement which ding which the which which whih

#age = 1
#while age < 10:
#    if age % 2 == 1:
#        if age == 3:
#            print("ding", end=" ")
#        elif age == 4:
#            print("dong", end=" ")
#        elif age == 5:
#            print("the", end=" ")
#        print("which", end=" ")
#    age += 1
#print("is dead", end=" ")

# example of an incorret interpetation the answer 15 think of it as 5*3
#num = 1
#new_num = 0
#while num < 10:
#    for i in range(3):
#        new_num += 1
#    num += 2
#print(new_num)

#x = 10
#my_list = ["yaba", "daba", "doo"]

# an example of another catch done by writing the thing out
#while x < 13:
#    for remark in my_list:
#        print(remark, end=" ")
#        x+=1
