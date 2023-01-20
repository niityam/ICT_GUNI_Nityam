import random
randnum = str(random.randrange(0, 1000))

print("Random number is: "+ randnum)
total =0
for x in range(0,len(randnum)):
    total = total + int(randnum[x])
print("The Sum of Digits is: "+str(total))
