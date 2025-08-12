// void main(){
//   var sum=addNumbers(5);
//   print("total number of sum is $sum");
// }

// int addNumbers(var n){
//   print("value pf n is $n");
//   //termination condition 
//   if(n==1){
//     return 1;
//   }else{
//     //5 
//     return n+addNumbers(n-1);
//   }
// }

//ternary operator for pizza avalible logic based

import 'dart:math';

void main(){
  bool pizzaavaliable=false;
  String pizza="Chese pizza";
  String burger="Veg Burger";
  String food=(pizzaavaliable)?pizza: burger;
  print(food);
  }