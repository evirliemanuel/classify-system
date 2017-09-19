package Testing;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
	
			int ctr = 0;
		 
		boolean isSuccess = false;
		while(!isSuccess) {
		    try {
		    	
		    	System.out.print(1/0);
		    	System.out.println("  Succes");
		        isSuccess = true;
		    } catch (ArithmeticException e) {
		    	
		    	if(ctr > 10) {
		    		
		    		  isSuccess = true;
		    	}else {
		    		ctr++;
		       isSuccess = false;
		       System.out.println("Failed");
		    	}
		      
		    }
		}	
	}
}
