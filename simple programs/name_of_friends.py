friends = ['nick','patrick',+'annie']
print(friends[0])
print(friends[1])
print(friends[2])

message_nick = friends[0]+" would the girls like to play"
message_patrick= "when are " + friends[1] + " and I going to play games."
message_annie= friends[2] + "help me clean the room."

print(message_nick)
print(message_patrick)
print(message_annie)

#list of guests invites
Guests = ['bill', 'fred', 'george']
#Declarining a variable to save typing
Invitation = " can you make it the party"
print(Guests[0]+Invitation)
print(Guests[1]+Invitation)
print(Guests[2]+Invitation)

#received notice that bill cannot make it
Guests.remove(0)
#Decided to invite Josh
Guests.append('josh')
#Printing new ist of invitation
print(Guests[0]+Invitation)
print(Guests[1]+Invitation)
print(Guests[2]+Invitation)

#Starting Guest List
Guests = ['bill','fred','george']
#Inviation to susan at the beginning of the list
Guests.Insert(0,'susan')
#Guest insertion in to middle of the list to max
Guests.Insert(3,'max')
#Guests invite to mike at the endo the list
Guests.append('mike')
#printing new guest list
print(Guests)
