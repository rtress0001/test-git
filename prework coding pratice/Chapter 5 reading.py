aurora = "blue park"
river = "harvest park"

if aurora == river:
    print("lets go to "+aurora+".")

elif aurora==river=="I dont want to go to the park":
    print("lets stay home tonight")
else:
    print("lets play pick a number")

necro = "moogle"
races_ff14=["human","human big", "human cat","human small","human magic"]

for race_ff14 in races_ff14:
    if race_ff14 == necro: 
        print("we play ff14")
    else:
        print("why didnt you pick me")


alien_color = "red"

if alien_color == "green":
    print("you gained 5 points")
else:
    print("you gained 10 points")

if alien_color == "green":
    print("you gained 5 points")
if alien_color != "green":
    print("you gained 10 points")

if alien_color == "green":
    print("you gained 5 points")
elif alien_color == "yellow":
    print("you gained 15 points")
else:
    print("you gained 10 points")

age = 34

if age < 2:
    print("your a baby")
elif age < 4:
    print("your a toddler")
elif age < 13:
    print("your a kid")
elif age < 20:
    print("your a teenager")
elif age < 65:
    print("your a adult")
else:
    print("your an elder")

#users = ["admin", "necro","bill","josh","suzz"]
users = []
if(users):
    for user in users:
        if user == "admin":
            print("hello admin would you like to see your report today")
        else:
            print("would "+user+" like to see your report today")
else:
    print("we need to find some users")