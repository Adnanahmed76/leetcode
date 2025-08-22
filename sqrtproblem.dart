//PROBLEM NO IS 69 ON LEETCODE HERE I USED IT BINARY SEARCH APPROACH FOR WORST CASE COMPLEXITY THAT'S WHY I USED HERE BINARY SEARCH ALGO


void main(){
  int x=5;
  Solution sol=Solution();
  int result=sol.mySqrt(x);
  print("the Sqrt is $result");
}



class Solution {
  int mySqrt(int x) {
  int start=1;
  int end=x;
  int ans=0;
  while(start<=end){
    int mid=start+(end-start)~/2;
  if(mid*mid==x){
    ans=mid;
    break;
  }else if(mid*mid<x){
  start=mid+1;
  ans=mid;
  }else{
    end=mid-1;
  }
  }
return ans;

}


}