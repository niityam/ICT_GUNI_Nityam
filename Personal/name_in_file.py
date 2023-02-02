f = open("ICT_GUNI.txt", "r")
# f.write("My name is Nityam Bhojani, I'm student of GUNI ICT. My Branch is Big Data Analytics")

infile = f.read()
check = input("Enter Word to check")
if(infile.__contains__(check)):
    print("File Contain Word", check)
else:
    print("File Don't Contain Word",check)