//find this year leap year or not
import 'dart:io';

void main(){
  //find leap year use if else condition
  /*
  print("Enter year ");
  int year=int.parse(stdin.readLineSync()!);
  if(year%400==0){
    print("$year is LeapYear");
  }else if(year%100==0){
    print("$year is not LeapYear");
  }else if(year%4==0){
    print("$year is LeapYear");
  }else{
    print("$year is not LeapYear");
  }*/
  //find leap year use &&,||,! condition
  print("Enter year:");
  int year =int.parse(stdin.readLineSync()!);
  if(year%400==0 ||(year%100!=0 && year%4==0)){
    print("$year is Leap Year");
  }else{
    print("$year is not Leap Year");
  }


}