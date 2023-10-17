data <- read.csv('train.csv')
View(data)


# Load the ggplot2 library if it's not already loaded
library(ggplot2)
library(dplyr)

#This Displays the likelihood of being transported
ggplot(data, aes(x = Transported)) +
  geom_bar(fill = "red") +
  labs(title = "Count of Being Transported",
       x = "Transported",
       y = "Count") +
  theme_minimal()\
count_true <- sum(data$Transported == "True")
print(count_true)
count_length <-length(data$Transported)
print(count_true/count_length)
#50.3%


planet_counts <- data %>%
  group_by(HomePlanet) %>%
  summarise(Count = n())

# Create a bar chart for homeplants

ggplot(planet_counts, aes(x = HomePlanet, y = Count)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Count of Home Planets",
       x = "Home Planet",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
#There are 4 home plants null, earth, Europa and mars, Earth is the most common type


#Count of being transported if your political allegiance is with Europa
filtered_data <- data %>%
  filter(HomePlanet == "Europa")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "red") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Europa chance of being transported") +
  theme_minimal()
#Significance chance of being transported compared to the average
#65% Chance of Transportation

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)

#Count of being transported if your political allegiance is with Earth
filtered_data <- data %>%
  filter(HomePlanet == "Earth")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "Green") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Earths chance of being transported") +
  theme_minimal()
#The decrease in the chance transported if your political allegiance from earth is approximately %40
count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#42.3% Chance of Transporation

#Count of being transported if your political allegiance is with Earth
filtered_data <- data %>%
  filter(HomePlanet == "Mars")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "Red") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Mars chance of being transported") +
  theme_minimal()
#Minimal increase in transporation chance
count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#52.3% Transporation chance

#Count of being transported if your political allegiance is with Nulls
filtered_data <- data %>%
  filter(HomePlanet == "")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "Red") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "nulls chance of being transported") +
  theme_minimal()
#The chance of being transported if your political allegiance from null
# Its representative of the whole population

#A conclusion to draw from the data is your known political allegiance influences the chance
#The chance of being transported if its belongs to Europa are more likely to be attacked

#Count of being transported if your political allegiance is with Europa and VIP
filtered_data <- data %>%
  filter(HomePlanet == "Europa", VIP == "True")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "red") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()

filtered_data <- data %>%
  filter(HomePlanet == "Europa", VIP == "False")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "red") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()
#The Chance of being transported based on if your Europa and not Vip is the most common
#chance of being attacked

#Distinations
planet_counts <- data %>%
  group_by(Destination) %>%
  summarise(Count = n())

# Create a bar chart for homeplants
ggplot(planet_counts, aes(x = Destination, y = Count)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Count of Desination",
       x = "Distation",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) 
#There are 4 desinations null ,55 Cancri e PSO J318.5-22, TRAPPIST-1e 
#Desination of Trappist 1e is dominate in the analysis

#Determine if the destination chances the chance of being attacked starting with Trappist-1e
filtered_data <- data %>%
  filter(HomePlanet == "Europa", VIP == "False", Destination == "TRAPPIST-1e" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "yellow") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()

filtered_data <- data %>%
  filter(HomePlanet == "Europa", Destination == "TRAPPIST-1e" )

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#63.49

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "yellow") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()

#The chance of being attacked for PSO J318.5-22
filtered_data <- data %>%
  filter(HomePlanet == "Europa", VIP == "False", Destination == "PSO J318.5-22" )

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#100% Chance of Transportation rather low count of the data

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "yellow") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()
#Chance of being attacked if desitnation is PSO J318.5-22 is 100% its a very small count

filtered_data <- data %>%
  filter(HomePlanet == "Europa",  Destination == "55 Cancri e" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "yellow") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()
count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#68.9% Chance of Transporation
#Chance of being transported are very high for "Europa and 55 Carncri e"

filtered_data <- data %>%
  filter(HomePlanet == "Europa", Destination == "55 Cancri e" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "yellow") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()

filtered_data <- data %>%
  filter(HomePlanet == "Europa", VIP == "True", Destination == "55 Cancri e" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "yellow") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa chance of being transported") +
  theme_minimal()

#Thoughts so far,Home Plant influences the chance of being transported
#VIP status protects you from being transported
#Destination and Europa status increases the likelihood of transported
#Thoughts for the future is to start from the top and see the chance of being attacked based
#destinations

filtered_data <- data %>%
  filter(Destination == "55 Cancri e")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#61% Chance of Transport

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of 55 Cancri e") +
  theme_minimal()


#Status of being transported if increased if you heading to 55 Cancri

filtered_data <- data %>%
  filter(Destination == "PSO J318.5-22")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#50.3 no effect on transportation

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination PSO J318.5-22") +
  theme_minimal()

#Status of being transported to PSO J318.5-22 is roughly equal to the chance of being transported of the whole set

filtered_data <- data %>%
  filter(Destination == "TRAPPIST-1e")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#47.11 minmial inpact on transporation

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination TRAPPIST-1e") +
  theme_minimal()

#Status of being transported if your destination is less than normal chance of being transported
#is your destination is Trappist-1e

filtered_data <- data %>%
  filter(CryoSleep == "True")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "True CyroSleep") +
  theme_minimal()
#Chance of Transportation is 81.1%

#Status of being transported if you in CryoSleep is very high

filtered_data <- data %>%
  filter(CryoSleep == "False")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#Chance of being Transported is 32.8%

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "False CyroSleep") +
  theme_minimal()

#Status of being transported if your in cryo sleep is very high

filtered_data <- data %>%
  filter(Destination == "55 Cancri e", CryoSleep == "True" )

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#92.8%

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of 55 Cancri e and CryoSleep") +
  theme_minimal()

#Status of being transported for 55 Cancri e is very high if you arlso in CryoSleep

filtered_data <- data %>%
  filter(Destination == "55 Cancri e", CryoSleep == "True", HomePlanet == "Europa")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#99.5%

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of 55 Cancri e") +
  theme_minimal()

#Status of being transprted if you in cryosleep and destination is 55 cancri e and from europa
#is near to 100%

filtered_data <- data %>%
  filter(Destination == "55 Cancri e", CryoSleep == "True", HomePlanet == "Europa", VIP == "True")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of 55 Cancri e") +
  theme_minimal()

#all where transported which is counter to vip normally being protect

filtered_data <- data %>%
  filter(Age < 30)

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#52.1% Chance of transposition a minimal effect the rate

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 30") +
  theme_minimal()

#Slight increase in chance of being transported

filtered_data <- data %>%
  filter(Age > 30)

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#48.05% Chance of transposition a minimal effect the rate

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 30") +
  theme_minimal()

#slight decrease of chance of being transported

filtered_data <- data %>%
  filter(Age > 45)

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#48.8% Chance of transposition a minimal effect the rate


ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age more than 45") +
  theme_minimal()

#slight decrease in count of being transported

filtered_data <- data %>%
  filter(Age < 25)
count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#52.9% Chance of transposition a minimal effect the rate


ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#Higher likelyhood of being transported

filtered_data <- data %>%
  filter(Age < 20)

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 20") +
  theme_minimal()
#highest likelyhood of being transported if your very young

filtered_data <- data %>%
  filter(Age > 55)

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age more than 55") +
  theme_minimal()

#minmial effect of chance of being transported

filtered_data <- data %>%
  filter(Age < 25, Destination == "55 Cancri e")

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

filtered_data <- data %>%
  filter(Age < 20, Destination == "55 Cancri e", )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

filtered_data <- data %>%
  filter(Age < 30, Destination == "55 Cancri e", CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

filtered_data <- data %>%
  filter(Age > 30, Destination == "55 Cancri e", CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()
#age does not increase the likelyhood of being transported if your aready belong to the group that
#has the high likelyhood of being transported

filtered_data <- data %>%
  filter(Age > 45, Destination == "55 Cancri e", CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#This didn't tell me any new information that we didn't already know
#Summary of analysis so far CryoSleep == True and Designation == 55 Cancri e and home plant == Europa
#produce the strong predictors of being transported
filtered_data <- data %>%
  filter(Age < 25, Destination == "55 Cancri e", HomePlanet == "Europa" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#Higher chance of being likelyhood of being transported if your young

filtered_data <- data %>%
  filter(Age < 25, Destination == "55 Cancri e", HomePlanet == "Europa", CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#100 chance of being transproted if you are young and heading to 55 Cancri e and your home plant is europa
#and your in cryosleep told me no new information

filtered_data <- data %>%
  filter(Destination == "55 Cancri e", HomePlanet == "Europa", CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#100 chance of being transproted if you are young and heading to 55 Cancri e and your home plant is europa
#and your in cryosleep this query told me no new information

filtered_data <- data %>%
  filter( Age > 30, CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

filtered_data <- data %>%
  filter( Age < 30, CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#age having minimal inpact on the likelyhood of being transported
filtered_data <- data %>%
  filter( Age > 30, CryoSleep == "False" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

filtered_data <- data %>%
  filter( Age < 30, CryoSleep == "False" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()
#Age is not a variable to be used in modeling

filtered_data <- data %>%
  filter( RoomService > 0)

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

filtered_data <- data %>%
  filter( RoomService == 0)

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()
#Room Service == 0 being increase the likelihood of transport, but that is likely due to 
#room service also being likely to not being in cryosleep

filtered_data <- data %>%
  filter( RoomService ==  0, CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

filtered_data <- data %>%
  filter( RoomService >  0, CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#There are no instances of Cryosleep and Room Service

filtered_data <- data %>%
  filter(CryoSleep == "True" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of age less than 25") +
  theme_minimal()

#Just a reminder of the strong effect of CryoSleep being high transport likelihood of transport

filtered_data <- data %>%
  filter( RoomService >  0, FoodCourt > 0, ShoppingMall > 0, Spa>0, VRDeck > 0 )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Spending lots of money") +
  theme_minimal()
#lower likelyhood of being transported

filtered_data <- data %>%
  filter( RoomService >  0 | FoodCourt > 0 | ShoppingMall > 0 |  Spa>0 | VRDeck > 0 )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Spending money") +
  theme_minimal()
#lower count of being transported if you spend money at the locations on the ship

filtered_data <- data %>%
  filter( RoomService == 0 & FoodCourt == 0 & ShoppingMall == 0 &  Spa == 0 & VRDeck == 0 )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "no money") +
  theme_minimal()
#spending money increase your chance of not being transported where not spending money increase
#count of being transported

ggplot(data, aes(x = Cabin)) +
  geom_bar(fill = "blue") +
  labs(title = "Count of Locations",
       x = "Cabins",
       y = "Count of cabin") +
  theme_minimal()
#This is a poorly made graph that doesn't tell us much information on the ship.

filtered_data <- data %>%
  filter( RoomService == 0 & FoodCourt == 0 & ShoppingMall == 0 &  Spa == 0 & VRDeck == 0, HomePlanet == "Europa" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "no money") +
  theme_minimal()
#Extremly high likely hood of being transported if didnt spend money and you home plant is Europa

filtered_data <- data %>%
  filter( RoomService == 0 & FoodCourt == 0 & ShoppingMall == 0 &  Spa == 0 & VRDeck == 0, HomePlanet == "Earth" )

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "no money") +
  theme_minimal()

#Being from earth didn't effect the likelihood of being transported didn't spend money and from earth

#summary so far in analysis Cyrosleep is the strong variable for being transported
#Home Plant of Europa has a high effect on being transported
#Destination of 55 Cancri e has a high effect on being transported
#Age of being young has a minor effect on being transported
#Not Spending money has a high influence of being transported
#I haven't figured out how to use cabin in the analysis
#Vip status reduces the likelihood of being attack by a minor amount

# Filter the data based on the pattern in the Port Side of the starship
filter_pattern <- "P"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows a slight decrease on the likelihood of transportation base on
#portside side

filter_pattern <- "S"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#55.5% chance of transporation

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Starboard Count of Transporation", x = "Transported")
#Shows a slight increase on the likelihood of transportation based on starbound
#side

filter_pattern <- "A"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#50.3% chance of transporation

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Count of Deck A", x = "Transported")
#Shows a no change on the likelihood of transportation based on starbound


filter_pattern <- "G"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows a no change on the likelihood of transportation based on starbound

filter_pattern <- "B"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#73.4% chance of transportation

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Deck B count of Transported", x = "Transported")
#Shows a Signficant change on the likelihood of b type cabins

filter_pattern <- "F"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#43.9% chance of transportation

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows a small Decrease on the likelihood of transportation based F

filter_pattern <- "E"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#35.7% chance of transporation

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows a Significant decrease on the likelihood of transportation based E type cabins

filter_pattern <- "C"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#68.0% chance of transport

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Deck C count of Transported", x = "Transported")
#Shows a Significant increase on the likelihood of transportation based C type cabins

filter_pattern <- ""
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows a no change on the likelihood of transportation based null type cabin

#The attacks are biased to deck b and c

#Create a filter for deck B and Starbourd
filter_pattern <- "B/\\d+/S"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#78.4 chance of transport

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows Signficant increase, but not more than experected

#Create a filter for deck B and Portside
filter_pattern <- "B/\\d+/P"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#67.42% chance of transporation less likely on portside

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")

#Shows sigficant increase, but the filter of Port or starboard didnt seem
#to be a change on the level

#Create a filter for deck B and Starbourd
filter_pattern <- "E/\\d+/S"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows Significant decrease, but not more than experected

#Create a filter for deck B and Portside
filter_pattern <- "E/\\d+/P"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows significant increase, but the fitler of Port or starbourd didnt seem
#to be a change on the level

#Create a filter for deck B and Starbourd
filter_pattern <- "C/\\d+/S"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#76.3 %Chance of Transportation

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows Significant increasing more than expected, but not more than expected

#Create a filter for deck B and Port side
filter_pattern <- "C/\\d+/P"
filtered_data <- data[grep(filter_pattern, data$Cabin, ignore.case = TRUE), ]

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#58.64 precent chance of transport

# Create a bar chart with the filtered data
ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "blue") +
  labs(title = "Filtered Bar Chart", x = "Transported")
#Shows decrease than effect, but the filter of Port or Star-Board didn't seem
#to be a change on the level

#Summary so far the decks with highest transportation rate show higher likelihood on the
#Occurs on floor C and B and the attack on starboard side was more likely than
#effects on portside. This target selection of the space anom is curious.

filtered_data <- data %>%
  filter(HomePlanet == "Europa", CryoSleep == "True")

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)

#98.9% Chance of Transporation
#Chance of being transported are very high for "Europa and 55 Carncri e"

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "yellow") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Euroropa and cryosleep chance of being transported") +
  theme_minimal()

filtered_data <- data %>%
  filter(HomePlanet == "Earth", CryoSleep == "True")

count_true <- sum(filtered_data$Transported == "True")
print(count_true)
count_length <-length(filtered_data$Transported)
print(count_true/count_length)

#65.5% Chance of Transporation a reduction in the rate of transporation from cyrolsleep
#907 individuals effected
#Chance of being transported are very high for "Europa and 55 Carncri e"

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(title = "Chance of being Transported",
       x = "Transported",
       y = "Earth and Cryosleep chance of being transported") +
  theme_minimal()

filtered_data <- data %>%
  filter(Destination == "55 Cancri e", HomePlanet == "Europa")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#68.9% Chance of Transport

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of 55 Cancri e") +
  theme_minimal()

Destination_counts <- data %>%
  group_by(Destination) %>%
  summarise(Count = n())

ggplot(Destination_counts, aes(x = Destination, y = Count)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Count of Destinations",
       x = "Destination",
       y = "Count") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
#bais towards Trappist 1-e

filtered_data <- data %>%
  filter(Destination == "TRAPPIST-1e", HomePlanet == "Europa")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#63.4% Chance of Transport a slight decrease in chance of transporation

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of 55 Cancri e")

filtered_data <- data %>%
  filter(Destination == "55 Cancri e", CryoSleep == "False", HomePlanet == "Europa")

count_true <- sum(filtered_data$Transported == "True")
count_length <-length(filtered_data$Transported)
print(count_true/count_length)
#37.3%

ggplot(filtered_data, aes(x = Transported)) +
  geom_bar(fill = "green") +
  labs(tile = "Count of being Transported",
       x = "Transported",
       y = "Destination of 55 Cancri e") +
  theme_minimal()


