if __name__ == '__main__':
    list1 =[]
    N = int(input())    
    for i in range(N):
        N = input()
        txt = N.split()
        
        if(txt[0] == "insert"):
            list1.insert(int(txt[1]), int(txt[2]))
            
        elif(txt[0] == "print"):
            print(list1)
            
        elif(txt[0] == "remove"):
            list1.remove(int(txt[1]))
            
        elif(txt[0] == "append"):
            list1.append(int(txt[1]))
            
        elif(txt[0] == "sort"):
            list1.sort()
            
        elif(txt[0] == "pop"):
            list1.pop()
            
        elif(txt[0] == "reverse"):
            list1.reverse()
