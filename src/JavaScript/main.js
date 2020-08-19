for (j = 1; j <= 100; j++){
    found = false;
    if (j % 3 === 0){
        print('Fizz');
        found = true;
    }
    if (j % 5 === 0){
        print('Buzz');
        found = true;
    }
    if (!found){
        print(j);
    }
}
