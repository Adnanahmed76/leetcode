void main(){
  var sum=addNumbers(5);
  print("total number of sum is $sum");
}

int addNumbers(var n){
  print("value pf n is $n");
  //termination condition 
  if(n==1){
    return 1;
  }else{
    return n+addNumbers(n-1);
  }
}