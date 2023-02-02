# f = open("score.txt", "w")
# f.write("100")
# f.close()

score = 190
f = open("score.txt", "r")
highscore = f.read()
print(highscore)
f.close()
if(score > int(highscore)):
    f = open("score.txt", "w")
    f.write(str(score))
    f.close()
    print("Score Updated")