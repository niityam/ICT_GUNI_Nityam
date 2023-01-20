import random
val = input("Enter 2 digit number")
randnum = str(random.randrange(10,99))

def fn2(val, randnum):
    total =0
    if(val[0] == val[1] or randnum[0] == randnum[1]):
        total = total - 1
    for x in val:
        for y in str(randnum):
            if(x == y):
                total = total +1
    return total


if(int(val) == int(randnum)):
    print(randnum)
    print("You Won $10,000. The Random Number was",randnum)

elif(fn2(val, randnum) == 2):
    print("You won $5,000. The Random Number was",randnum)

elif(fn2(val, randnum) == 1):
    print("You won $2,000. The Random Number was",randnum)
else:
    print("Better Luck Next Time. The Random Number was",randnum)
