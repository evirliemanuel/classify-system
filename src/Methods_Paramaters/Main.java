package Methods_Paramaters;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		anotherClass anotherObject = new anotherClass() ;
		Scanner input = new Scanner(System.in);
		
		System.out.println("Enter yout name :");
		String name = input.nextLine();
		anotherObject.anotherClassesMessage(name);
		

	}

}
