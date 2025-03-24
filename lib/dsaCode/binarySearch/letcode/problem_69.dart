/*
To find the square root of a non-negative integer x rounded down to
the nearest integer without using any built-in exponent function or operator,
we can use a binary search approach. This ensures an efficient solution with
O(log n) time complexity.
বাংলা সামারি এবং কোড ব্যাখ্যা:
এই সমস্যাটিতে আমাদের একটি নন-নেগেটিভ ইন্টিজার x দেওয়া হবে, এবং আমাদের x-এর বর্গমূল বের করতে হবে। বর্গমূলটি অবশ্যই নিকটতম পূর্ণসংখ্যায় রাউন্ড ডাউন করতে হবে। আমরা কোনো বিল্ট-ইন এক্সপোনেন্ট ফাংশন বা অপারেটর (যেমন pow(x, 0.5) বা x ** 0.5) ব্যবহার করতে পারব না।

*/

import 'dart:math';

void main(){
  print("36 number squre root ${sqrt(36)}");
  print("25 number squre root ${sqrt(25)}");
  print("16 number squre root ${sqrt(16)}");
}
int mysqrt(int x){
  int left=1;
  int right=x;
  int result=0;
  if(x==0|| x==1){
    return x;

  }else{
    int mid=left+(right-left)~/2;
    if(mid<=x~/mid){
      result=mid;
      left=mid+1;
    }else{
      right=mid-1;
    }

  }
  return result;
}