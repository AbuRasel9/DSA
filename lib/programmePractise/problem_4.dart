//1+(2+3)+(4+5+6)+....+nth term
import 'dart:io';

void main(){
  print("Enter a number:");
  int n=int.parse(stdin.readLineSync()!);
  print("sum of the series ${sumOfSeries(n)}");

}
double sumOfSeries(int n){
  double sum=0;
  int incrementNum=1;
  for (int i=1;i<=n;i++){
    int groupSum=0;
    for(int j=1;j<=i;j++){
      groupSum+=incrementNum;
      incrementNum++;
    }
    sum+=groupSum;
  }
  return sum;
}