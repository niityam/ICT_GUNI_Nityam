#Prac 3.1
import random
randnum = int(random.randrange(1,53))

def num(randnums):
    modnum = randnums%13
    if(modnum == 1):
        return "Ace"
    elif(modnum>=2 and modnum<=10):
        return modnum
    elif(modnum==11):
        return "Jack"
    elif(modnum==12):
        return "Queen"
    elif(modnum==0):
        return "King"
        
if(randnum>=1 and randnum<=13):
    print("The Card You Pick is",num(randnum), "of Clubs")
elif(randnum>=14 and randnum<=26):
    print("The Card You Pick is",num(randnum), "of Diamonds")
elif(randnum>=27 and randnum<=39):
    print("The Card You Pick is",num(randnum), "of Hearts")
else:
    print("The Card You Pick is",num(randnum), "of Spades")