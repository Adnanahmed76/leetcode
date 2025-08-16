//FIND THE FIRST OCCIRENT OF STRING
void main(){
  //example 1
  String haystack ="sadbutsad";
  String needle="sad";
  String haystack2 = "leetcode";
Solution solution=Solution();

int result=solution.strStr(haystack,needle);
int result2=solution.strStr(haystack2,needle);

print(result);

print(result2);




}

class Solution{
  int strStr(String heystack,String needle){
    int n1=heystack.length;
    int n2=needle.length;
    if(n2>n1) return -1;
    for(int i=0;i<=n1-n2;i++){
      if(heystack.substring(i,i+n2)==needle){
return i;
      }
    }
    return -1;
  }
}