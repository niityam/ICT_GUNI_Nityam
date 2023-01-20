import random

randnum = int(random.randrange(0,100))
usernum = int(input("Enter Number"))

while(usernum!=randnum):
    if(usernum>randnum):
        print("Your guess is too high:")
        usernum = int(input("Try again.."))
    elif(usernum<randnum):
        print("Your guess is too low:")
        usernum = int(input("Try again.."))
print("Yes, The number is",usernum)
