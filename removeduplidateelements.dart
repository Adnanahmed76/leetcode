void main(){
  List<int> nums1=[1,1,2];
  Solution sol=Solution();
  int k1=sol.removeDuplicated(nums1);
  print("k = $k1, nums = ${nums1.sublist(0,k1)}");
  //list 2
  List<int> nums2=[0,0,1,1,1,2,2,3,3,4];
  int k2=sol.removeDuplicated(nums2);
  print("k $k2, nums = ${nums2.sublist(0,k2)}");
}
class Solution{
  int removeDuplicated(List<int> nums){
  if(nums.isEmpty) return 0;
  int k=1;//accesing index
  for(int i=1;i<nums.length;i++){
    if(nums[i]!=nums[i-1])
    {
      nums[k]=nums[i];
      k++;
    }
  }
  return k;
  }
}