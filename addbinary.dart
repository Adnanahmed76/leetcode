//PROBLEM NO 67 LEETCODE ADD BINARY
void main(){
Solution sol=Solution();
String result=sol.addBinary("11", "1");
//1010 
//9
//101

String result2=sol.addBinary('1010', '101');
print("Result first is $result");
print("Result second is $result2");

}
class Solution{
  String addBinary(String a,String b){
    int i=a.length-1;
    int j=b.length-1;
    int carry=0;
    StringBuffer ans=StringBuffer();
    while(i>=0|| j>=0||carry!=0){
      int x=(i>=0 && a[i]=='1')? 1:0;
      int y=(j>=0 &&b[j]=='1')?1:0;
      int sum=x+y+carry;
      ans.write((sum%2).toString());
      carry=sum~/2;
      i--;
      j--;

    }
    return ans.toString().split('').reversed.join('');
  }
}