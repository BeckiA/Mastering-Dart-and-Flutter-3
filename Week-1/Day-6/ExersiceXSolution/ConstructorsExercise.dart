// Define a class called BankAccount
class BankAccount {
  //TO DO: CREATE AN INSTANCE VARIABLE CALLED
  // BALANCE WITH A DEFAULT VALUE OF ZERO

  // BONUS: Can you figure out how to make it "private"
  double balance = 0;

  // TODO: Create a Named constructor that can take in a
  // a double value and set that as the balance
  BankAccount.getBalance(double depo) {
    balance = depo;
  }
  // TODO: Create a deposit method that takes an amount a
  // and adds it to the balance
  void depositBalance(double amount) {
    balance += amount;
  }

  // TODO: Create a withdraw method that takes an amount
  // and subtracts it from the balance

  void withdrawBalance(double amount) {
    balance -= amount;
  }
}

void main() {
  // Create a BankAccount object with an initial balance of 100.0
  BankAccount account = BankAccount.getBalance(100.0);
  // Deposit 50.0 into the account
  account.depositBalance(50.0);
  // Withdraw 25.0 from the account
  account.withdrawBalance(25.0);
  // Print the final balance
  print(account.balance);
}
