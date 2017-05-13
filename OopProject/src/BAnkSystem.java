import java.util.Scanner;

class Account {
    long accountNo ;
    public String type ;
    int currentBalance = 1000;
    int amount ;
    String demo ;

    void doDeposite(int amount) {
        this.amount = amount;
        System.out.println("\n\nAmount deposited = " + amount );
        System.out.println("\nCurrent balance = " + (amount + this.currentBalance));
    }
}

class Customer extends Account {
    public String name;

    Customer()
    {
        this.currentBalance = 1000;
    }

    void openAccount(String name, String type, long accountNo) {
        this.name = name;
        this.type = type;
        this.accountNo = accountNo;
       System.out.println("\nAccount created with details as \nName of Account holder\t" + name + "\nType of Account\t" + type + "\nAccount No\t" + accountNo + "\nCurrent Balance\t" + currentBalance);
    }

    
}

class Employee extends Customer {

}

class Loan  {
    double interest;
    public Scanner sc = new Scanner(System.in);
    int p ; // the principle amount
    int t ; // the number of years the money is invested or borrowed for

    double r = 0.12; // the annual interest rate
    int n = 1; // the number of times that interest is compounded per year

    void getDetails() {
        System.out.println("Enter principle amount");
        p = sc.nextInt();
        System.out.println("Enter number of years money is borrowed or invested");
        t = sc.nextInt();

    }

    double calculateInterest() {

         interest =  (p * Math.pow(1 + (r / n), (n * t)) - p);

        return interest;
    }

}

 class BankSystem {

    public static void main(String[] args) {
        // TODO Auto-generated method stub

        Customer customer1 = new Customer();
        Customer customer2 = new Customer();

        System.out.println("\nOpening account of type Saving Account\n");
        customer1.openAccount("Bob", "Saving", 12164578);
        
        System.out.println("\nOpening account of type Current Account\n");
        customer2.openAccount("John", "Saving", 11264575);

        Account accountObj = new Account();
        System.out.println("\nFor customer1"); 
        customer1.doDeposite(1200);

        System.out.println("\nFor customer2");
        customer2.doDeposite(5000);
        
        Loan loanObj = new Loan();
        System.out.println("\n\t\tEnter Details to calculate Interest \n\n");
        loanObj.getDetails() ;
        System.out.println("\nCompound Interest = " + loanObj.calculateInterest());
    }

}
