num = input("Enter Value")
val = str(num).split(".")
print(val[0]," dollars")

quater = 0
dimes =0
nickel =0
cent = 0

def find(valdot):
    global quater, dimes, nickel, cent
    if(valdot/25 >= 1 ):
        quater = int(valdot/25)
        return valdot-(quater*25)
    elif(valdot/10 >=1):
        dimes = int(valdot/10)
        return valdot-(dimes*10)
    elif(valdot/5 >=1):
        nickel = int(valdot/5)
        return valdot-(nickel*5)
    else:
        cent = valdot
        return 0


if(len(val)==int(2)):
    valdot = int(val[1]) #Contains value after .
    if(len(str(valdot))==1):
        valdot = valdot*10
        while valdot != 0:
            valdot = find(valdot)
    else:
        while valdot != 0:
            valdot = find(valdot)
    

print(quater," Quater")
print(dimes," Dimes")
print(nickel," Nickel")
print(cent," Cent")
