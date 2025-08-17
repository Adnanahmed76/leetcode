//Easiest Question cheking we are here factorial of numbers we can find out factorial any number using this logics


void main(){
  int x=5;
Solution sol=Solution();
print("Factorial of number 5 is ${sol.factorialnumber(x)}");
print("Factorial of number 7 is ${sol.factorialnumber(7)}");
}

class Solution{
  int factorialnumber(int x){
    int fact=1;
    for(int i=1;i<=x;i++){
      fact=fact*i;
    }
    return fact;
  }
}