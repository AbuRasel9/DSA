//find this year leap year or not
import 'dart:io';

void main(){
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
  }


}