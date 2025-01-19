/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* --------------------- Compiled by: (Dr.) B.C. Yadav ------------------ */
/* ----------------------- On: 2025/01/18 08:03:04 ---------------------- */
/* -------------------- Updated: 2025/01/18 08:02:34 -------------------- */
/* ====================================================================== */
/* This code covers the basic know-hows of dart language focussing on data types in dart, and assumes that:
  - flutter and dart have been installed in the system,
  - `flutter` and `dart` are recognized as global commands, and 
  - dart programs can be run simply by typing `dart \path\to\dart_program_name.dart` 

Alternatively, one can make use of https://dartpad.dev/ for running the dart snippets.*/



/* ====================================================================== */
/*                           DATA TYPES IN DART                           */
/* ====================================================================== */
// The data types in dart are: 
// 1. Number: int, double, num and BigInt
// 2. Strings: String 
// 3. Booleans: bool 
// 4. Lists: List 
// 5. Maps: Map



/* ====================================================================== */
/*                                 NUMBERS                                */
/* ====================================================================== */
// While `int` and `double` are the conventional data types, `num` represents and inherited data type.
class Numbers{

  int num1 = 2;
  double num2 = 1.5;

  Numbers() {

  print("Int num: $num1");
  print("Double num: $num2");

  // Parsing int and double from strings 
  var num3 = num.parse("1");
  var num4 = num.parse("1.1");

  print("Numbers parsed using `num.parse()` function: $num3, $num4");
  }
}



/* ====================================================================== */
/*                                 STRING                                 */
/* ====================================================================== */
// Strings are sequences of UTF-16 code units which are encoded in single or double quotes.
class StringDataType{

  String str1 = "Dart is a ";
  String str2 = "necessity";

  StringDataType(){
    print(str1 + str2);
  }
}



/* ====================================================================== */
/*                                 BOOLEAN                                */
/* ====================================================================== */
class BooleanDataType{

  String str1 = "Dart is a ";
  String str2 = "necessity";

  BooleanDataType(){
    bool val = (str1 == str2);
    print(val);
  }
}



/* ====================================================================== */
/*                         CALLING ABOVE FUNCTIONS                        */
/* ====================================================================== */
void main(){

  var numbers = Numbers();
  numbers;

  var stringDataType = StringDataType();
  stringDataType;

  var booleanDataType = BooleanDataType();
  booleanDataType;

}



/* ====================================================================== */
/*                                   END                                  */
/* ====================================================================== */