void main(){
  int x=121;

Solution solution=Solution();
bool result=solution.palindrome(x);
print(result);
}

class Solution{
  bool palindrome(int x){
    int reserved=0;
    int dup=x;
    while(x>0){
      int lastdigit=x%10;
      reserved=reserved*10+lastdigit;
      x=x~/10;
    }
    if(dup==reserved){
      return true;
    }
    else{
      return false;
    }
  }
}