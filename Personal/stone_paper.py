import random
 
# prints a random value from the list
list1 = [1, 2, 3]
def won(c1,c2):
    if(c1 == 1 and c2 == 2):
        return 2
    elif(c1 == 1 and c2 == 3):
        return 1
    elif(c1 == 2 and c2 == 1):
        return 1
    elif(c1 == 2 and c2 == 3):
        return 2
    elif(c1 == 3 and c2 == 1):
        return 2
    elif(c1 == 3 and c2 == 2):
        return 1
    elif(c1 == c2):
        print("Draw")
        return 0

userscore = 0
computerscore = 0
userchoice = 1
while(userchoice!=4):
    ran = random.choice(list1)
    userchoice = int(input("Choose (1: Stone, 2: Paper, 3: Scissors, 4: Exit)"))
    print(ran, userchoice)
    if(won(ran, userchoice) == 1):
        print("Computer Won")
        computerscore += 1
    elif(won(ran, userchoice) == 2):
        print("User Won")
        userscore += 1
        
print("User Score: ", userscore)
print("Computer Score: ",computerscore)