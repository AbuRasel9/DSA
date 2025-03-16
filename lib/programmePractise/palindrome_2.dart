//akhane 10 no palindrome number holo 11

void main() {
  int n = 10; // আপনি চাইলে n এর মান পরিবর্তন করতে পারেন
  int nthPalindrome = findNthPalindrome(n); // n-th প্যালিনড্রোম নাম্বার খুঁজে বের করা
  print("The $n-th palindrome number is: $nthPalindrome"); // রেজাল্ট প্রিন্ট করা
}

// ফাংশন: একটি সংখ্যা প্যালিনড্রোম কিনা চেক করা
bool isPalindrome(int number) {
  String numStr = number.toString(); // সংখ্যাটিকে স্ট্রিং এ কনভার্ট করা
  String reversedStr = numStr.split('').reversed.join(''); // স্ট্রিংটিকে উল্টানো
  return numStr == reversedStr; // মিল আছে কিনা চেক করা
}

// ফাংশন: n-th প্যালিনড্রোম নাম্বার খুঁজে বের করা
int findNthPalindrome(int n) {
  int count = 0; // কতগুলো প্যালিনড্রোম নাম্বার পাওয়া গেছে তা ট্র্যাক করা
  int number = 1; // শুরু করার জন্য প্রথম সংখ্যা

  while (true) {
    if (isPalindrome(number)) { // সংখ্যাটি প্যালিনড্রোম কিনা চেক করা
      count++; // প্যালিনড্রোম নাম্বার পাওয়া গেলে কাউন্ট বাড়ানো
      if (count == n) { // যদি n-th প্যালিনড্রোম নাম্বার পাওয়া যায়
        return number; // n-th প্যালিনড্রোম নাম্বার রিটার্ন করা
      }
    }
    number++; // পরবর্তী সংখ্যায় যাওয়া
  }
}