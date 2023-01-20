import calendar
from datetime import date
   
yy = 1947
mm = 6
dd =5

age_days = date.today() - date(yy, mm, dd)
print("Age of Shyam's Grandfather is: ")
strage = str(age_days)
days = strage.split()
print((int(days[0]) - int(days[0])%365)/365)

print("\n")
print(calendar.month(yy, mm))
