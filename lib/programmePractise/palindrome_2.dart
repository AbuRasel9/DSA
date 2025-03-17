//akhane 10 no palindrome number holo 11


import 'dart:io';

void main(){
  print("Enter any number:");
  int num=int.parse(stdin.readLineSync()!);
  print("The $num-th palindrome number is: ${findNthPalindrome(num)}");
}


bool checkPalindrome(int number){
  String numStr=number.toString();
  String reverseValue=numStr.split("").reversed.join("");
  return numStr==reverseValue;

}
int findNthPalindrome(int n){
  int count=0;
  int number=1;
while(true){
  if(checkPalindrome(number)){
    count++;
    if(count==n){
      return number;
    }
  }
  number++;
}
}