/*
* Given an array nums containing n distinct numbers in the range [0, n],
* return the only number in the range that is missing from the array.
*
* আমাদের একটি অ্যারে nums দেওয়া হবে যেখানে n সংখ্যক স্বতন্ত্র সংখ্যা আছে এবং এই সংখ্যাগুলোর রেঞ্জ হলো [0, n]। আমাদের কাজ হলো এই রেঞ্জের মধ্যে যে সংখ্যাটি অনুপস্থিত সেটি বের করা।


* */
int missingNumber(List<int>list){
  int n=list.length;
  //list er length  joto hbe tik 0 theke oi porjonto number gular sum ber korte hbe
  // list er length 3 ex:0+1+2+3
  int expectedSum=n*(n+1)~/2;
  //list sob number gula sum kora hoice
  //akhane value first a 0 hbe er por protibar ager sum oi value te thakbe
  int actualSum=list.reduce((value, element) => value+element,);
  //akhn expectedSum theke actual sum minus korlei missing number pawa jabe
  return expectedSum-actualSum;

}
void main(){
  List<int> nums1 = [3, 0, 1];
  print(missingNumber(nums1)); // আউটপুট: 2

  List<int> nums2 = [0, 1];
  print(missingNumber(nums2)); // আউটপুট: 2

  List<int> nums3 = [9,6,4,2,3,5,7,0,1];
  print(missingNumber(nums3)); // আউটপুট: 8

}