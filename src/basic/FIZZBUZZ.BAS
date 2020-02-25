For j% = 1 To 100 Step 1
    output$ = ""
    If j% Mod 3 = 0 Then output$ = output$ + "Fizz"
    If j% Mod 5 = 0 Then output$ = output$ + "Buzz"
    If output$ = "" Then output$ = j%
    Print output$
Next