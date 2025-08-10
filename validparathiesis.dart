void main(){
print("valid parenthieses is");
print(isvalid("()"));
print(isvalid("()[]{}"));
print(isvalid("(]"));
print(isvalid("([])"));
print(isvalid("([)]"));


}
bool isvalid(String s){
  final Map<String,String> parenthieses={
    ')':'(',
     '}':'{',
     ']':'['

  };
  final List<String> stack=[];
  for(String char in s.split('')){
    if(parenthieses.containsKey(char)){
      if(stack.isEmpty|| stack.last!=parenthieses[char]){
        return false;
      }
      stack.removeLast();
    }else{
      stack.add(char);
    }

  }
  return stack.isEmpty;
}