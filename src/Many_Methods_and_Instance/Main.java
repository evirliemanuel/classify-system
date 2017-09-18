package Many_Methods_and_Instance;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		anotherClass anotherClassObject = new anotherClass();
		Scanner input = new Scanner(System.in);
		System.out.println("Enter your name: ");
		String name = input.nextLine();
		anotherClassObject.setName(name);
		anotherClassObject.saying();
	}

}
