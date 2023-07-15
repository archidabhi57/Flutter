import 'dart:io';

bool isPrime(N) {
  for (var i = 2; i <= N / i; i++) {
    if (N % i == 0) {
      return false;
    }
  }
  return true;
}

void main(List<String> args) {
  print("Enter number :");
  var N = int.parse(stdin.readLineSync()!);
  if (isPrime(N)) {
    print("Number is prime");
  } else {
    print("Number is not prime");
    print("Number is Real ");
  }
}
