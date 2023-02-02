from datetime import datetime

timestart = datetime.now()
dic = {"1+1 = x": 2, "2 + x = 10": 8, "x - 9 = 18": 27}
total = 0
print("Lets Start The Quiz!!")
for x in dic:
    print("\nYour Question is: \n",x)
    ans = int(input("Enter you answer"))
    if(ans == dic[x]):
        total +=1
        print("Correct Answer, Your Score is",total)
    else:
        print("Wrong, The Answer was",dic[x])
timeend = datetime.now()
duration =  str(timeend - timestart)
splidur = duration.split(":")
second = splidur[2]
print("\nCompleted Test in: ",splidur[0],"Hours", splidur[1], "Minutes", second[0:2], "Seconds")
print("Your Score is:",total)