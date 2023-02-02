f = open("text.txt","r")

data = ""
i = 0
word = input("Enter Word to Search")
while(data!="END"):
    i += 1
    data = f.readline()
    if(data.__contains__(word)):
        print("Given Word:",word, "Found at Line:",i)