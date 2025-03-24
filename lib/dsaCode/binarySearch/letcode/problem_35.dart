/*
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with O(log n) runtime complexity

* */

void main(){
    List<int>sortedList= [1,3,5,6];
    print(findNumber(sortedList, 5));

}
int findNumber(List<int>sortedList,int targetValue){

  int left=0;
  int right=sortedList.length-1;
  while(left<=right){

    int mid=left+(right-left)~/2;
    if(sortedList[mid]==targetValue){
      return mid;
    }else if(sortedList[mid]<targetValue){
      left=mid+1;
    }else{
      right=mid-1;
    }
  }
  return left;

}