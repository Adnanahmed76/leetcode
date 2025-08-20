class Solution {
  List<int> plusOne(List<int> digits) {
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] < 9) {
        digits[i]++;
        return digits;
      }
      digits[i] = 0; // agar 9 hai to 0 bana do
    }

    // Agar loop complete ho gaya -> sabhi 9 the
    digits.insert(0, 1);
    return digits;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.plusOne([1, 2, 4]));   // [1, 2, 5]
  print(sol.plusOne([2, 3, 5, 4])); // [2, 3, 5, 5]
  print(sol.plusOne([3, 2, 1]));   // [3, 2, 2]
  print(sol.plusOne([9, 9, 9]));   //
}