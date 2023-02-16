inp = input("Enter a string: ")
inp = inp.lower()
lst = []
for x in range(97, 123):
    if(chr(x) not in inp):
        lst.append(chr(x))

if(len(lst)!=0):
    print("Given Sentence is not Pangram \nThe missing characters are: ", end="")
    for x in lst:
        print(x, end=" ")
else:
    print("String is a pangram")