print(4.0==4)
#Output is true

print(4.0!=4)
#output is false

#Output is false
print(36.2<36.2)

#an without the : the code will not exucute
#number = 8
#if True
#    print("statement")

number = 8
if True:
    print("statement")

if number <= 8:
    print("statement")

name = "Destiny Child"

if name == "Destiny Child":
    print("Say my Name, say my Name", end=" ")
print("If no one is around you", end=" ")
if name:
    print("Say baby I love you", end=" ")
else:
    print("does not print")

x=5
y=10
i="5"
j="10"

if x==i and x !="y":
    print("statement", end=" ")
else:
    print("singing", end=" ")
if x <int(j) or i==j:
    print("dead", end=" ")
else:
    print("of the night", end=" ")
#elif if doesnt work unless
#x=5
#print("A spoon ")
#if x==4 or x==5:
#    print("full of ",end=" ")
#else:
#    print("statement")
#elif: x>=4:
#    print("suger",end=" ")

# Tests the order of operation in if else
x=5
print("A spoon ")
if x==4:
    print("full of ",end=" ")
elif x>=4:
    print("suger",end=" ")
else:
    print("statement")
print("helps go down")

x=5
print("A spoon", end=" ")
if x==4 or x==5:
    print("full of",end=" ")
elif x>=4:
    print("suger",end=" ")
else:
    print("statement")
print("helps go down")
