FOR j% = 1 TO 100 STEP 1
    output$ = ""
    IF j% MOD 3 = 0 THEN output$ = output$ + "Fizz"
    IF j% MOD 5 = 0 THEN output$ = output$ + "Buzz"
    IF output$ = "" THEN output$ = STR$(j%)
    PRINT output$
NEXT

