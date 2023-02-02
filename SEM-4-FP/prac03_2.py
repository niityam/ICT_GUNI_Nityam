#Prac 3.2
#Method 1
import datetime 
year = int(input("Enter Year"))
days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
for i in range(1,13):
    x_date = datetime.date(year, i, 1)
    no = x_date.weekday()
    print(x_date.strftime("%B"),"1,",year, "is", days[no])

#Method 2
days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

year = int(input("Enter Year"))
sum = days.index((input("Enter Day")))

for x in range(1, 13):
    print(months[x-1],"1," , days[(sum)%7])
    if(x%2 == 1):
        sum = sum + 31
    elif(x == 2):
        if(year%4 == 0):
            sum = sum + 29
        else:
            sum = sum + 28
    elif(x%2 == 0):
        sum = sum + 30
