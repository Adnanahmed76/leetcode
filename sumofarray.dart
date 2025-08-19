import 'dart:ffi';

void main(){
  List<int> numbers=[1,2,3,-1,8];
int sum=0;
for(int i=0;i<numbers.length;i++){
  sum=sum+numbers[i];
  print("Sum of array $sum");
}

}