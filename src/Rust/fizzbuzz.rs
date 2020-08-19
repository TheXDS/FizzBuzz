fn main() {
    for j in 1..101 {
        let mut found = false;
        
        if j % 3 == 0 {
            print!("Fizz");
            found = true;
        }
        
        if j % 5 == 0 {
            print!("Buzz");
            found = true;
        }
        
        if !found {
            print!("{}", j);
        }
        
        println!();
    }
}
