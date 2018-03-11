package ie.dit;

public class Dog extends Animal
{
	String name;
	public Dog(String name)
	{
     	this.name = name;

	}

	public void speak()
	{
		System.out.println(name + " says " + " howiyeh! ");
	}




}
