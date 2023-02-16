import string
name = input("Enter Name")
address = input("Enter Address")
pincode = input("Enter Pincode")
mobileno = input("Enter Mobile Number")
hobby = input("Enter Hobby")
lifegoals = input("Enter Life Goals")
age = int(input("Enter Age"))

def name_v(name, address, pincode, mobileno, hobby, lifegoals, age):
    age = str(age)
    for x in string.punctuation:
        if(x in name or name.isalpha() == False):
            name = input("Name Invalid, Enter Again")
            name_v(name, address, pincode, mobileno, hobby, lifegoals, age)
            return 0
        
        if(x in address and x!=","):
            address = input("Address Invalid, Enter Again")
            name_v(name, address, pincode, mobileno, hobby, lifegoals, age)
            return 0
        
        if(x in pincode or len(pincode)!=6 or pincode.isnumeric() == False):
            pincode = input("Pincode Invalid, Enter Again")
            name_v(name, address, pincode, mobileno, hobby, lifegoals, age)
            return 0

        if(x in mobileno or len(mobileno)!=10 or mobileno.isnumeric() == False):
            mobileno = input("Mobile Number Invalid, Enter Again")
            name_v(name, address, pincode, mobileno, hobby, lifegoals, age)
            return 0
        
        if(x in hobby and x!=","):
            hobby = input("Hobby Invalid, Enter Again")
            name_v(name, address, pincode, mobileno, hobby, lifegoals, age)
            return 0
        
        if(x in lifegoals and x!=","):
            lifegoals = input("Life Goals Invalid, Enter Again")
            name_v(name, address, pincode, mobileno, hobby, lifegoals, age)
            return 0
        
        if(x in age):
            age = input("Age Invalid, Enter Again")
            name_v(name, address, pincode, mobileno, hobby, lifegoals, age)
            return 0

name_v(name, address, pincode, mobileno, hobby, lifegoals, age)

if(age<=18):
    print("You will get minority scholarship")
elif(age>18 and age<60):
    print("You are not eligible for any Scholarship")
else:
    print("You will get retirement pension")
