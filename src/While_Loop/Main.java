package While_Loop;

public class Main {
	
	public static void main(String[] args) {
	
	int counter = 1;
	boolean booleanName = true;
	
	while(booleanName) {
		System.out.println(counter);
		counter++;
		if (counter > 10) {
			
			booleanName = false;
		}else {
			booleanName = true;
			}
		}
	
	}

}
