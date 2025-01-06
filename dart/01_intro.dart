/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
// This code covers the basic know-hows of dart language, and assumes that:
  // - flutter and dart have been installed in the system,
  // - `flutter` and `dart` are recognized as global commands, and 
  // - dart programs can be run simply by typing `dart \path\to\dart_program_name.dart` 

// Alternatively, one can make use of dartpad.com for running the dart snippets.



/* ====================================================================== */
/*                                COMMENTS                                */
/* ====================================================================== */
// This is a single line comment

/* This is a 
multiline comment */

/// This is a 
/// documentation comment



/* ====================================================================== */
/*                      ENTRY POINT OF A DART PROGRAM                     */
/* ====================================================================== */
// In Dart, the main() function is a built-in method that acts as the entry point of the application. We can have only a single entry point.

// A simple dart program to check if a number is even or odd 
bool checkEven(n) {
  if (n%2==0)
    return true;
  else
    return false;
}

int main() {
  int n = 43;
  print(checkEven(n));
  return 0;
}