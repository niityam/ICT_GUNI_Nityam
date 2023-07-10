#Empty List for Storing Two Chefs Marks
marks = [0, 0]

a= []
b = []

# Taking input
def get_input():
  criteria = ["Presentation","Hygiene","Taste"]
  for i in range(len(criteria)):
    a.append(int(input("Enter Marks For "+ criteria[i])))
    b.append(int(input("Enter Marks For "+ criteria[i])))

#Comparing Marks From Two Chefs
def compare():
  for i in range(len(a)):
    if a[i] > b[i]: 
      marks[0]+= 1
    elif a[i] < b[i]:
      marks[1]+= 1

#Output in given format
def output():
  print(marks[0], marks[1])

get_input()
compare()
output()
