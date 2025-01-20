/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* --------------------- Compiled by: (Dr.) B.C. Yadav ------------------ */
/* ----------------------- On: 2025/01/18 08:03:04 ---------------------- */
/* -------------------- Updated: 2025/01/20 16:02:05 -------------------- */
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
  double num2 = 1.4;
  num a = 10;

  Numbers() {

  num2 = 1;
  // - Since num2 is of type double, it can be assigned an integer value, however it would still store with zero decimal places. Vice versa is not possible.

  a = 10.5;
  // - We can use num data type if we don't know the actual data type of the user input.

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
/*                                  LIST                                  */
/* ====================================================================== */
// A list is an ordered collection of objects. These can be variable or fixed in size.
class ListDataType{

  // Declaring a list of alternate size
  List<int> var1 = [];
  List<int> var2 = [10];

  // Declaring a list of fixed size
  List<int> var3 = List<int>.filled(3,1);
  List<int> var4 = List<int>.generate(10, (index) => 3 * index);

  // Constructor
  ListDataType(){

    var1.add(1);  // elements can be added to a variable length list
    // var3.add(4);  // will throw error for this fixed length list

    print(var1);
    print(var2);
    print(var3);
    print(var4);
  }
}



/* ====================================================================== */
/*                                   MAP                                  */
/* ====================================================================== */
class MapDataType{

  // Declaring empty maps
  Map? map1;  //? simply indicates that the variable is nullable
  Map<int,String>? map2;
  var map3 = new Map();

  // Declaring maps with entries
  Map? map4 = {
    0: 'String1',
    1: 'String2'
  };
  
  Map<int,String> map5 = {
    0: 'String1',
    1: 'String2'
  };

  var map6 = new Map();


  // Constructor
  MapDataType(){

    print("Map1: $map1");
    print("Map2: $map2");
    print("Map3: $map3");
    print("Map4: $map4");
    print("Map5: $map5");
    
    map6[0] = 'String1';
    map6[1] = 'String2';
  
    print("Map6: $map6");

  }
}



/* ====================================================================== */
/*                         CALLING ABOVE FUNCTIONS                        */
/* ====================================================================== */
void main(){

  var numbers = Numbers();
  numbers;

  // var stringDataType = StringDataType();
  // stringDataType;

  // var booleanDataType = BooleanDataType();
  // booleanDataType;

  // var mapDataType = MapDataType();
  // mapDataType;

}



/* ====================================================================== */
/*                                   END                                  */
/* ====================================================================== */