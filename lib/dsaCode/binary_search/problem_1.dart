/*

Given a sorted array of distinct integers and a target value,
return the index if the target is found.
 If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity
* এই Dart কোডটি একটি সর্টেড (সাজানো) অ্যারে nums-এ একটি টার্গেট ভ্যালু (target) কোথায় ইনসার্ট করতে হবে বা
* থাকলে তার ইনডেক্স কী, তা বের করার জন্য বাইনারি সার্চ ব্যবহার করে। নিচে কোডটি বিস্তারিত ব্যাখ্যা করা হলো এবং একটি সামারি দেওয়া হলো।
* */

void main(){
  int targetValue=9;
  List<int>list=[1,3,4,5,6,7,8,9,10];
  if(list.contains(targetValue)){
    print("$targetValue present  ${searchInsert(list, targetValue)} no index");

  }else{
    print("$targetValue should be present  ${searchInsert(list, targetValue)} no index");


  }

}
int searchInsert(List<int>list,int targetValue){
  int left=0;
  int right=list.length-1;
  while(left<=right){
    int mid=left+(right-left)~/2;
    if(list[mid]==targetValue){
      return mid;
    }

    else if(list[mid]>=targetValue){
      right=mid;

    }else{
      left=mid+1;
    }
  }
  return left;


}
