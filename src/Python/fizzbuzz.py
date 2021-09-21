for j in range(1, 100):
    o = ""
    if (j % 3) == 0:
        o += "Fizz"
    if (j % 5) == 0:
        o += "Buzz"
    if o == "":
        o = str(j)
    print(o)