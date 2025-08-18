//LEETCODE PROBLEM IS 35 SEARCH INSERT POSITION 

void main(){
List<int> nums=[1,2,3,5,7];
int target=0;
Solution sol=Solution();
int result =sol.searchInsert(nums, target);
print("Search insetion is $result");
}

class Solution {
  int searchInsert(List<int> nums, int target) {
   
     int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
      int mid = left + ((right - left) ~/ 2);

      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return left; // correct insert position
  }
}

  
