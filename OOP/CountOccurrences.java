import java.util.Scanner;

public class CountOccurrences {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Integer number;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the number");
		number = sc.nextInt();
		int len = (number.toString()).length(); // calculating length of number
		int[] array = new int[len]; // creating array

		// split number into array of digits
		for (int index = 0; index < len; index++) {
			array[index] = number % 10;
			number = number / 10;
		}

		restart: for (int outer = 0; outer < len; outer++) {
			int count = 1;
			int test = array[outer];

			for (int inner = outer + 1; inner < len; inner++) {
				if (test == array[inner])
					count++;
			}

			for (int check = 0; check < outer; check++) {
				if (array[check] == test)
					break restart;
			}
			System.out.println(" Number of" + test + " = " + count);
		}

	}

}
