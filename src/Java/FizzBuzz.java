public class FizzBuzz
{
	public static void main(String[] args) {
		for (int j = 1; j <=100; j++) {
		    boolean found = false;
		    if (j % 3 == 0){
		        System.out.print("Fizz");
		        found = true;
		    }
		    if (j % 5 == 0){
		        System.out.print("Buzz");
		        found = true;
		    }
		    if (!found){
		        System.out.printf("%d", j);
		    }
		    System.out.println();
		}
	}
}

