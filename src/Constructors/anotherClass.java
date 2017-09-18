package Constructors;

public class anotherClass {
	private String Name;
	public anotherClass(String Name) {
	this.Name = Name;
	
	}
	public String getName() {
		return Name;
	}

	public void saying() {
		System.out.printf("Your Name is %s",getName());
	}
	
	

}
