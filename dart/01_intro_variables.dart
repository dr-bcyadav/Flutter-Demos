/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* -------------------- Compiled by: (Dr.) B.C. Yadav ------------------- */
/* ----------------------- On: 2025/01/06 19:48:02 ---------------------- */
/* -------------------- Updated: 2025/01/07 07:23:26 -------------------- */
/* ====================================================================== */
/* This code covers the basic know-hows of dart language, and assumes that:
  - flutter and dart have been installed in the system,
  - `flutter` and `dart` are recognized as global commands, and 
  - dart programs can be run simply by typing `dart \path\to\dart_program_name.dart` 

Alternatively, one can make use of dartpad.com for running the dart snippets.*/



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



/* ====================================================================== */
/*                                VARIABLES                               */
/* ====================================================================== */
// Variable names can be alphanumeric and can hold at most underscore(_) and dollar sign ($). Different types are discussed ahead:

// 1. Non-nullable variables must be declared and initialized together. The ones marked with keyword `late` are non-nullable too but can be initialized later:
int age = 25;
String name = "Manifest";
late double weight;  // can be initialized later 

// 2. Nullable variables: Declared with a `?` and are by default initialized with null value. Hence, they can be left unassigned with any other value.
int? age1;
String? name1; 
String? name2 = null;  // null assignment is optional

// 3. final variables: Immutable after initialization 
final int age3 = 33;
final String name3 = "Breaking Bad";

// 4. const variables: Compile time constants
const double weight1 = 75.5;
const List<int> numbers = [1,2,3];  // immutable list

// 5. Instance variables: These can be nullable and non-nullable
class Person {
  String name3;  // non-nullable but must be initialized in constructor
  Person (this.name3);
  String? nickname;  // nullable
  late int age;  //non-nullable but can be initialized later
}

// 6. Static and top-level variables: These are similar to instance variables and can be nullable or non-nullable, both. static variables must be declared inside a class. 
class MyClass {
  static int? value1 = null;  // nullable 
  late String config;  // non-nullable, can be set later
}

/* Key points: 
  - Non-nullable types (int, String, etc.) require initialization unless marked `late`. 
  - Nullable types (int?, String?) can be left uninitialized. 
  - `final` and `const` variables need to be initialized and are immutable. 
  - `late` allows delayed initialization. 
*/

// There's another keyword called `dynamic` which lets Dart decide the appropriate data type of the variable.
dynamic var2 = "String in use";