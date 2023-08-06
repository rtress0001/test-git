#declaring the dictionary
person_you_know = {'frist name':'nick','last name':'nepper','age':'33','city':'saint paul'}
#calling all keys and values in the group person_you know in a loop
for index in person_you_know:
    print(index + person_you_know[index]+",")

#using a different method of calling
for key, value in person_you_know.items():
    print(key + value +",")


#Miss read the question of the name is the key of the value of 
#favorite_number = {'name':'bill','number':'2',
#                   'name':'josh','number':'10',
#                   'name':'sarah','number':'3',
#                   'name':'kane','number':'7',
#                   'name':'annie','number':'11',
#                   }
#print("favorite number of " + favorite_number['name'] + " is " + favorite_number["number"])

#This the answer to 6.2
favorite_number = {'bill':'2',
                   'josh':'10',
                   'sarah':'3',
                   'kane':'7',
                   'annie':'11',
                   }
print(favorite_number['bill'])

#this is the answer for 6.3
programming_values = {"assignment":"= is the tool for setting a varriable to a value",
                      "loops": " for is the tool for repeating tasks",
                      "if statements":" if tool for conditional using code based on a boolean expression",
                      "lists":" [] the tool of storing information to be used later",
                      }
print(programming_values["assignment"])

# This is an example of bad coding for dictionaries, use "bill":"2" instead.
#favorite_number = {'name':'bill','number':'2',
#                   'name':'josh','number':'10',
#                  'name':'sarah','number':'3',
#                   'name':'kane','number':'7',
#                  'name':'annie','number':'11',
#                   }
#for name  in favorite_number.values():
#   print("favorite number of " + name + " is " + favorite_number[name])

#6.4 cleaned up code of 6.1
favorite_number = {'bill':'2',
                   'josh':'10',
                   'sarah':'3',
                   'kane':'7',
                   'annie':'11',
                   }
for key, value in favorite_number.items():
    print(key+ "'s farvorite number is "+ value+".")

#Declaring the Dictionary of Rivers in countries
rivers = {"nile":"eygpt",
          "missiple":"america",
          "yellow": "china"
          }
# On variable look that prints a sentance
for index in rivers:
    print("The river "+index.title()+" runs though the country of "+rivers[index].title()+".")

# 6.7 make two dictionaries repesting different people you know

friends = {
            'nick':{
                    'will smash':'yes',
                    'will dark souls':'no'
                     },
            'patrick':{
                    'will smash':'yes',
                    'will dark souls':'yes'
                    },
            'necro':{
                    'will smash':'no',
                    'will dark souls':'yes'
                    }
             }

family = {
         'annie':{
                    'will smash':'no',
                    'will dark souls':'no'
                     },
            'aurora':{
                    'will smash':'yes',
                    'will dark souls':'no'
                    },
            'river':{
                    'will smash':'no',
                    'will dark souls':'no'
                    }
             }
people_I_know=[friends,family]

print(type(family))

print(type(family['annie']))

#after using the del key for a dictionary you will aquire an error if attempt to recover it
#del friends['necro']
#print(friends['necro'])

#you cannot use list techiques to aquire a value the for dicitonary
#print(family['annie'][0])

#its possible to use keys in conditionals their is an implied order in the dictonary
for key in family:
    if key > "aurora":
        print(key, end=" ")

for key, value in family.items():
    if value == {
                    'will smash':'yes',
                    'will dark souls':'no'
                     }:
        print("Test", end=" ")
    if value == 'aurora':
        print("Fail")
    print("x",end=" ")

family.update({"aurora": {
                    'will smash':'yes',
                    'will dark souls':'yes'
                    }})
print(family['aurora'])
#for person in people_I_know:
#    for name, will_play in people_I_know:

