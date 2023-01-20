from datetime import datetime

name = input("Enter Name")
age = input("Enter Age")
email = input("Enter Email")
device = input("Enter Your Device")

print("Your Data is: \n Name: "+name +"\n Age: "+age+"\n Email: "+email+"\n Device: "+device + "\nTime: "+str(datetime.now()))
