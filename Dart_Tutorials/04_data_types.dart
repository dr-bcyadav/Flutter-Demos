/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* --------------------- Compiled by: (Dr.) B.C. Yadav ------------------ */
/* ----------------------- On: 2025/01/18 08:03:04 ---------------------- */
/* -------------------- Updated: 2025/01/20 16:51:39 -------------------- */
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
  // 1. Numbers: int, double, num and BigInt
  // 2. Strings 
  // 3. Booleans
  // 4. Lists
  // 5. Sets 
  // 6. Maps
  // 7. Queues
  // 8. Enums



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

// Some properties of numbers are: ["hashcode", "isFinite", "isInfinite", "isNan", "isNegative", "sign", "isEven", "isOdd"]
// Some useful methods are: ["abs()", "ceil()", "floor()", "compareTo()", "remainder()", "round()", "toDouble()", "toInt()", "toString()", "truncate()"]



/* ====================================================================== */
/*                                 STRING                                 */
/* ====================================================================== */
// Strings are sequences of UTF-16 code units which are encoded in single or double quotes.
class StringDataType{

  String str1 = "Dart is a ";
  String str2 = "key language";

  StringDataType(){

    // Concatenating strings
    // Using plus operator within print statement
    print(str1+str2);

    // Using string interpolation
    print("$str1 key language");
    // - newline operator is automatically added after str1 in the above case

    // Just separating the strings by quotes
    var str3 = 'Dart ''is ''a ''key language';  
    print(str3);

    // Using plus operator during assignment
    var str4 = 'Dart '+'is '+'a '+'key language';
    print(str4);

  }
}



/* ====================================================================== */
/*                                 BOOLEAN                                */
/* ====================================================================== */
class BooleanDataType{

  String str1 = "Dart is a ";
  String str2 = "key language";

  BooleanDataType(){
    bool val = (str1 == str2);
    print(val);
  }
}



/* ====================================================================== */
/*                                  LIST                                  */
/* ====================================================================== */
// A list is an ordered collection of objects. These can be fixed or growable. 
// Based on structure, a list can be 1D, 2D, 3D or multi-dimensional.

class ListDataType{

  // Declaring a growable list
  List<int> list1 = [];
  List<int> list2 = [10];

  // Declaring a list of fixed size
  List<int> list3 = List<int>.filled(3, 1, growable:false);
  List<int> list4 = List<int>.generate(10, (index) => 3 * index, growable: false);
  // - By default `growable` is `true` for `.generate()`, hence it is rather modifiable by default.

  // Lists can also be declared simply as follows:
  var list5 = ['element0', 'element1'];

  // Constructor
  ListDataType(){

    // Elements can be added to a growable list
    list1.add(1);  
    list1.addAll([3,4,5]);  // adding multiple values
    list1.insert(2,9);  // adding value at a specific index

    // Following will throw error
    // list3.add(4); 
    // list4.add(4); // won't throw error if `growable:true` passed during declaration

    print("List1: $list1");
    print("List2: $list2");
    print("List3: $list3");
    print("List4: $list4");
    print("List5: $list5");
  }

  // Demonstrating multi-dimensional lists
  MultiDimLists(){
    String pad = '*'*10;
    print("\n $pad Multi Dimensional Lists $pad");

    // Declaring a 2D list 
    int a = 3; 
    int b = 3; 

    var list6 = List.generate(a, (i) => List.filled(b,0), growable: false);
    // Inserting values now
    for (int i=0; i<3; ++i){
      for (int j=0; j<3; ++j){
        list6[i][j] = i+j;
      }
    }

    print("List6:\n$list6\n");

    // Another way of declaring a 2D list 
    var list7 = List.generate(3, (i) => List.generate(3, (j) => i+j));
    print("List7:\n$list7\n");

    // Creating a 3D list 
    var list8 = List.generate(3, (i) => List.generate(3, (j) => List.generate(3, (k) => i+j+k)));
    print("List8:\n$list8\n");

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

  // var numbers = Numbers();
  // numbers;

  // var stringDataType = StringDataType();
  // stringDataType;

  // var booleanDataType = BooleanDataType();
  // booleanDataType;

  var listDataType = ListDataType();
  listDataType;
  listDataType.MultiDimLists();

  // var mapDataType = MapDataType();
  // mapDataType;

}



/* ====================================================================== */
/*                                   END                                  */
/* ====================================================================== */