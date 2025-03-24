void main() {
  int n = 4; // Change this value to calculate the sum up to the nth group
  int sum = calculateSeriesSum(n);
  print("The sum of the series up to the $n-th group is: $sum");
}

// Function to calculate the sum of the series
int calculateSeriesSum(int n) {
  int sum = 0; // Initialize the total sum
  int currentNumber = 1; // Start from the first number in the series

  for (int group = 1; group <= n; group++) {
    int groupSum = 0; // Sum of the current group
    for (int term = 1; term <= group; term++) {
      //g=2
      //t=1
      //
      groupSum += currentNumber; // Add the current number to the group sum
      print(groupSum);
      currentNumber++; // Move to the next number
    }
    print(" ");

    sum += groupSum; // Add the group sum to the total sum
    print("sum--$sum");
  }

  return sum;
}