
#Question 1:
#Taking a user input for the using in the hello_name function
user_name=input("enter the username to be printed")

#Defining a function that prints when called the user input in all capital letters plus "hello "
def hello_name(user_name):
    """Prints a message based on input when invoke while returning nothing"""
    caps = user_name.upper()
    print("hello "+ caps)

#invoking the function to determine if it functions
hello_name(user_name)

#Question 2: making a for loop to print conditionally only odd number with no input

def first_odds():
    x=0
    for x in range(100):
        if x%2 == 1:
            print(x, end=" ")

first_odds()

# Question 3: 
# Writing a function that determines the max of a list this function
a_list= [-41,3,5,7,9,2,3,21]

def max_num_in_list(a_list):
    """Setting a variable to be compared to each member of a list""" 
    y = a_list[0]
    """making for loop to check every member in the list and only setting the highr value is found to date of the list"""
    for x in a_list:
       if x > y:
          y = x
    return y
print(max_num_in_list(a_list))

#Question 4: 
#Leap year function that is using the complex logic of x and y or z
def is_a_leap_year(a_year):
    a_year = int(a_year)
    if (a_year % 400 == 0) and (a_year % 100 == 0):
        leap_year = True
    elif (a_year % 100 != 0) and (a_year % 4 == 0):
        leap_year = True
    else:
        leap_year  = False
    return  leap_year

print(is_a_leap_year(int(input("Type an interger for testing: "))))

#Testing years for not running code lots of times
#for x in range(100):
#    a_year = int(input("type an interger year for testing: "))
#    x =+1
#    print(is_a_leap_year(a_year))

#declaring a list for testing
b_list = [5,4,8,2,1,0]

#Question 5: 
#Function checks if the frist element of the list plus 1 is equal to the second element of a list using a slice returns
#Boolean function it is either increasing 1,2,3,4 or decreasing 4,3,2,1 is still consecitive
def is_consecutive (b_list):
    elementzero = b_list[0]
    for element in b_list[1:]:
        if elementzero + 1 == element or elementzero -1 == element:
            y = True
            elementzero = element
        else:
            y = False
            break
    return y
#printing the boolean of the is_consecutive
print("the boolean for is the list consecutivity" + str(is_consecutive(b_list)))

    


