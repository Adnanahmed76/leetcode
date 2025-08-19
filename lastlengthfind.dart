//length of last word

void main(){
  String s="joy with a handsome ";
Solution sol=Solution();
int result=sol.lengthoflastword(s);
print("Length of last word $result");
}
class Solution{
  int lengthoflastword(String s){
    int count=0;
    for(int i=s.length-1;i>=0;i--){
      if(s[i]!=' '){
        count++;
      }else if(count>0){
        return count;
      }
    }
    return count;
  }

}