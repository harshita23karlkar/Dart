enum Status {
  pending,
  completed,
  rejected;
}

class BankAccount {
  double balance = 0;
  void deposit(double amount) {
    balance += amount;
  }

  bool withdraw(double amount) {
    if (this.balance > amount) {
      this.balance -= amount;
      var status = Status.completed;
      print(status == Status.completed);
      return true;
    } else
      return false;
  }
}

mixin pass {
  void show(double bal) {
    print("your current balance is $bal");
  }
}

class SavingAccount extends BankAccount with pass {
  double interestRate = 0.0;
  double getInterestRate() => this.interestRate;
}

void main() {
  var obj = SavingAccount();
  print(obj.balance);
  print(obj.withdraw(200));
  obj.deposit(10000);
  print(obj.balance);
  obj.withdraw(3500);
  obj.show(obj.balance);
}
