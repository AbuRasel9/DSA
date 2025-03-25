/*
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity

* */

void main(){
    List<int>sortedList= [1,3,5,6];
    print(searchInsert(sortedList, 5));

}
int searchInsert(List<int>nums,int target){

  int left=0;
  int right=nums.length-1;
  while(left<=right){

    int mid=left+(right-left)~/2;
    if(nums[mid]==target){
      return mid;
    }else if(nums[mid]<target){
      left=mid+1;
    }else{
      right=mid-1;
    }
  }
  return left;

}