//1^1+2^2+3^3+....+n^n
//use pow method
import 'dart:io';
import 'dart:math';
/*

void main(){
  print("Enter any number:");
  int n=int.parse(stdin.readLineSync()!);
  print("sum of the series ${sumOfSeries(n)}");

}
double sumOfSeries(int n){
  double sum=0;
  for (int i=1;i<=n;i++){
    sum+=pow(i, i);
  }
  return sum;
}*/

//normal way to solve this

void main(){
  print("Enter a number:");
  int n=int.parse(stdin.readLineSync()!);
  print("sum of series ${sumOfSeries(n)}");
}
double sumOfSeries(int n){
  double sum=0;
  for(int i=1;i<=n;i++){
    double result=1;
    for (int j=1;j<=i;j++){
      result*=i;
    }
    sum=sum+result;
  }
  return sum;
}