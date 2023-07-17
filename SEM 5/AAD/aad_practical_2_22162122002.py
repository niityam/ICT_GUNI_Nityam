#Practical 2

inp = []

#taking user input
def user_input():
  for i in range(5):
    inp.append(int(input()))

#Main Algorithm
def algo():

  #Assinging some values to OP, so that it can be overright
  op = [abs(inp[0]+inp[1]),inp[0],inp[1]]

  #Loop i to iterate all elements
  for i in range(0,len(inp)):

    #Loop y to iterate from ith element to last second element
    for y in range(i, len(inp)-1):

      #checking if same or not, if yes replacing old value
      temp = abs(inp[i] + inp[y])
      if op[0]>temp:
        op[0] = temp
        op[1] = inp[i]
        op[2] = inp[y]

#Output
def user_output():
  print(op[1], op[2])

user_input()
algo()
user_output()
