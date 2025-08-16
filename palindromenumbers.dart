void main(){
  int x=121;

Solution solution=Solution();
bool result=solution.palindrome(x);
print(result);
}

class Solution{
  bool palindrome(int x){
    int reverse=0;
    int dup=x;
    while(x>0){
      int lastdigit=x%10;
      reverse=reverse*10+lastdigit;
      x=x~/10;
    }
    if(dup==reverse){
      return true;
    }
    else{
      return false;
    }
  }
}