import 'dart:io';

void main() {
  print("====== Task 1 ======");
  String name = "Youssef Hassan";
  int age = 20;
  print("Hello, my name is $name, and I am $age years old.");

  print("\n====== Task 2 ======");
  int num1 = 15;
  int num2 = 25;
  int sum = num1 + num2;
  print("The sum of $num1 and $num2 is $sum.");

  print("\n====== Task 3 ======");
  int numberToCheck = 150;
  if (numberToCheck > 100) {
    print("Big");
  } else {
    print("Small");
  }

  print("\n====== Task 4 ======");
  String? nullableString;
  print(
    nullableString ?? "This is a default message because the string is null.",
  );

  print("\n====== Task 5 ======");
  List<int> numbersList = [10, 20, 30, 40, 50];
  int totalSum = 0;
  for (int i = 0; i < numbersList.length; i++) {
    totalSum += numbersList[i];
  }
  print("The total sum is $totalSum.");

  print("\n====== Task 6 ======");
  // Using a variable for Celsius as requested in the task description
  double celsius = 30.0;
  double fahrenheit = (celsius * 9 / 5) + 32;
  print("$celsius°C is equal to ${fahrenheit.toStringAsFixed(2)}°F.");

  print("\n====== Task 7 ======");
  int divNumber = 15;
  if (divNumber % 3 == 0 && divNumber % 5 == 0) {
    print("$divNumber is divisible by both 3 and 5.");
  } else if (divNumber % 3 == 0) {
    print("$divNumber is divisible by 3.");
  } else if (divNumber % 5 == 0) {
    print("$divNumber is divisible by 5.");
  } else {
    print("$divNumber is not divisible by 3 or 5.");
  }

  print("\n====== Task 8 ======");
  List<String> namesList = [
    "Ali",
    "Ahmed",
    "Sara",
    "Youssef",
    "Maha",
    "Mahmoud",
  ];
  for (String n in namesList) {
    if (n.length > 4) {
      print(n);
    }
  }

  print("\n====== Task 9 ======");
  Map<String, int> items = {
    "Book": 40,
    "Pen": 10,
    "Bag": 150,
    "Shoes": 200,
    "Notebook": 30,
  };
  items.forEach((itemName, itemPrice) {
    if (itemPrice > 50) {
      print("Item: $itemName, Price: $itemPrice");
    }
  });

  print("\n====== Task 10 ======");
  stdout.write("Enter a number to check even/odd: ");
  String? input10 = stdin.readLineSync();
  if (input10 != null && int.tryParse(input10) != null) {
    int parsedNum = int.parse(input10);
    String? result;
    if (parsedNum % 2 == 0) {
      result = "Even";
    } else {
      result = "Odd";
    }

    // Print the result only if it's not null
    if (result != null) {
      print("The number is $result");
    }
  } else {
    print("Invalid input.");
  }

  print("\n====== Task 11 ======");
  List<int> task11Numbers = [12, 45, 2, 78, 34, 90, 5];
  if (task11Numbers.isNotEmpty) {
    int highest = task11Numbers[0];
    int lowest = task11Numbers[0];
    for (int n in task11Numbers) {
      if (n > highest) highest = n;
      if (n < lowest) lowest = n;
    }
    print("Highest value: $highest");
    print("Lowest value: $lowest");
  }

  print("\n====== Task 12 ======");
  stdout.write("Enter a number to check if it's prime: ");
  String? primeInput = stdin.readLineSync();
  if (primeInput != null && int.tryParse(primeInput) != null) {
    int primeCheckedNum = int.parse(primeInput);
    bool isPrime = true;

    if (primeCheckedNum <= 1) {
      isPrime = false;
    } else {
      for (int i = 2; i <= primeCheckedNum ~/ 2; i++) {
        if (primeCheckedNum % i == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      print("$primeCheckedNum is a prime number.");
    } else {
      print("$primeCheckedNum is not a prime number.");
    }
  } else {
    print("Invalid input.");
  }

  print("\n====== Task 13 ======");
  List<num> mixedNumbers = [10, -5, 20.5, -10.2, 5, -2];
  double sumPositive = 0;
  int countPositive = 0;
  for (num n in mixedNumbers) {
    if (n > 0) {
      sumPositive += n;
      countPositive++;
    }
  }
  if (countPositive > 0) {
    print("Average of positive numbers: ${sumPositive / countPositive}");
  } else {
    print("No positive numbers found.");
  }

  print("\n====== Task 14 ======");
  stdout.write("Enter first number for calculator: ");
  double? numA = double.tryParse(stdin.readLineSync() ?? "");
  stdout.write("Enter second number for calculator: ");
  double? numB = double.tryParse(stdin.readLineSync() ?? "");
  stdout.write("Choose operation (+, -, *): ");
  String? operation = stdin.readLineSync();

  if (numA != null && numB != null) {
    switch (operation) {
      case "+":
        print("Result: ${numA + numB}");
        break;
      case "-":
        print("Result: ${numA - numB}");
        break;
      case "*":
        print("Result: ${numA * numB}");
        break;
      default:
        print("Invalid input: Operation not supported.");
    }
  } else {
    print("Invalid numbers entered.");
  }

  print("\n====== Task 15 ======");
  Map<String, String> users = {
    "admin": "12345",
    "user": "password",
    "youssef": "123",
  };

  stdout.write("Enter username: ");
  String? enteredUser = stdin.readLineSync();
  stdout.write("Enter password: ");
  String? enteredPass = stdin.readLineSync();

  // Handle the case if the entered values are null
  if (enteredUser == null ||
      enteredPass == null ||
      enteredUser.trim().isEmpty ||
      enteredPass.trim().isEmpty) {
    print("Error: Username or password cannot be empty.");
  } else {
    if (users.containsKey(enteredUser) && users[enteredUser] == enteredPass) {
      print("Login successful. Welcome $enteredUser!");
    } else {
      print("Invalid username or password.");
    }
  }
}
