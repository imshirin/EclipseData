/*Here Vending Machine is an Interface which is implemented by Tea , Coffee and Milk class.
 Vending machine is having an abstract method called takeBeverage() which is overridden by all these classes.
 Tea class dont know how the internal process of making tea is happening it just get beverage based on its behaviour.
 and same abstraction for two other classes also.
 */

interface VendingMachine {
	void takeBeverage();

}

class Tea implements VendingMachine {
	public void takeBeverage() {
		System.out.println("I am taking Tea");
	}

}

class Coffee implements VendingMachine {
	public void takeBeverage() {
		System.out.println("I am taking Coffee");
	}

}

class Milk implements VendingMachine {
	public void takeBeverage() {
		System.out.println("I am taking Milk");
	}

}

public class ImplementHere {
	public static void main(String[] args) {
		VendingMachine TeaObject = new Tea();
		TeaObject.takeBeverage();

		VendingMachine CoffeeObject = new Coffee();
		CoffeeObject.takeBeverage();

		VendingMachine MilkObject = new Milk();
		MilkObject.takeBeverage();

	}
}
