#This chapter is about programming functions

# Code of 8.1
#def display_message():
#    """ explains the chapter """
#    print("the chapter is about making functions")

#display_message()

#question 8.2
#def favorite_book(title):
#    """accepts user input and formats it"""
#   print("\nYour favorite book is " + title.title()+"!"
#          )
    
#favorite_book("sexytime")

# 8.3 Make a shirt assemply function and 8.4

#def make_shirt(message = "Hello", size = "L"):
#    message = input("What message would you like on your shirt?")
#    size = input("what size would you like?")
##
#print("making shirt with the message "+message+" and the size of the shirt is " + size )

#make_shirt()

# 8.3 make shirt calling for inputs in the the function 
#def make_shirt(msg = input("what message on the shirt would you like "),size = input("what size would you like? ")):
#       print("making shirt with the message "+ msg +" and the size of the shirt is " + size )
#
#make_shirt()

#8.6 make a function that describes cities

#def describe_city(country = "United States", city = "saint paul"):
#    print(country, ",", city)

#describe_city("germany", "berlin")

# 8.7 and 8.8 completed, but 8.9 unable to complete ask a question
#album_dict = {"artist":"artist name", "album":"album name", "tracks": 0}
#album_dict = {}

#def make_album (artist = 'jimi', album = "hendrix ",tracks = 0 ):
#    album_dict["artist name"] = artist
#    album_dict["album name"] = album
#    if tracks > 0:
#       album_dict()["tracks"] = int(tracks)
#    print(album_dict)


#while True:
#    artist_name = input("who is the artist of album. type quit to stop")
#    if artist_name == "quit":
#        break
#    album_dict["artist name"] = artist_name
#    album_name = input("what is the name of the album")
#    if album_name == "quit":
#        break
#    album_dict["album name"]= album_name
#    album_dict["tracks"] = int(input("please input an integer for the number of tracks"))
#    make_album(album_dict["artist name"], album_dict["album name"],album_dict["tracks"])

# quiz one and two question error

#blue_fairy():
#def blue_fairy():
#    print("Always let you consciense be your guide")

# No Output
#def blue_fairy():
#    print("Always let you consciense be your guide")
#
#blue_fairy

#Quiz question no oupt
#def blue_fairy():
#    return("Always let you consciense be your guide")
#
#blue_fairy()   

#Quiz quetion forgetting () causes a hex error
#def blue_fairy():
#    return("Always let you consciense be your guide")
#
#print(blue_fairy)

#Quiz quetion the return send a value but does not say print unless told too
#def blue_fairy():
#    return("Always let you consciense be your guide")
#
#print(blue_fairy())

#quiz question error is missing varriable
#def rafiki(lion):
#    print(lion + " "+ " Oh yes, the past can hurt.\ , But, the way I see it, you can either run from it or learn from it")
#
#rafiki()

# quiz qestion output produces an error for simba is not defined
#def rafiki(lion):
#    print(lion + " " + "Oh yes, the past can hurt.\ , But, the way I see it, you can either run from it or learn from it")
#
#rafiki(simba)

#Quiz question logic of dory this prints the following "I dont know you" none

#def dory(fish, minutes_since_last_talked):
#    if minutes_since_last_talked > 10:
#        print("I dont know you")
#    else:
#        if fish == "nemo":
#            print("just keep swmimming")
#        else:
#           print("I dont know you")
#
#print(dory("nemo",90))

# 8.8, 8.9, and 8.10 all in one code

#magicians =["kane","kip","kelvice","aurora"]

#def show_magicians(magician):
#    for magician in magicians:
#        print("the great " + magician)
#show_magicians(magicians[:])
#print(magicians)

def emperor(word_a, word_b):
    my_string = ("The " + word_b +" that blooms"+" in adversity is the most "+ "rare and " + word_a +" of all" )
    return  my_string

word_1="flower" 
word_2="beautiful"
print(emperor(word_a = word_1,word_b=word_2))