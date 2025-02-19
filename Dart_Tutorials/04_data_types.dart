/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* --------------------- Compiled by: (Dr.) B.C. Yadav ------------------ */
/* ----------------------- On: 2025/01/18 08:03:04 ---------------------- */
/* -------------------- Updated: 2025/02/20 05:03:57 -------------------- */
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
/*                                LIBRARIES                               */
/* ====================================================================== */
import 'dart:collection';



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
}



/* ====================================================================== */
/*                                  SETS                                  */
/* ====================================================================== */
// Sets are the lists with no duplicates. These come into play when we need to store unique values in a variable without considering the order of the inputs. 
class SetDataType{

  var set1 = <String>{'Learning dart'};
  Set<String> set2 = {'Learning consistently'};

  SetDataType(){
    print('Set1: $set1');
    print('Set2: $set2');
  }

  // Checking the behaviour of a list and set with repeated elements
  listVsSet(){

    var list1 = <String>['learn', 'and', 'learn'];
    var set3 = <String>{'learn', 'and', 'learn'};
    print('\nList: $list1');
    print('Set: $set3');
    // - The repeated value is ignored while printing the set.
  }

  // Adding values to a set
  addingElementsToset(){

    set2.add('technology');
    print('\nList: $set2');

    set2.addAll(['generative', 'AI']);
    print('\nList: $set2');
    // - The repeated value is ignored while printing the set.
  }

  // Performing some other functions over sets
  functionsOverSets(){

    var set4 = {'Hello', 'Fellow', 'Dr.'};
    print("\nElement at index 0 in set4: ${set4.elementAt(0)}");
    print("Length of set4: ${set4.length}");
    print("Checking wheter set4 contains word 'Dr': ${set4.contains('Dr.')}");

    // Removing a particular element from set 
    set4.remove('Hello');
    print("Set4 after removing 'Hello': $set4");

    // Removing all elements from a set 
    set4.clear();
    print("Set4 after clearing all elements: $set4");

    // Using forEach over a set
    var set5 = {'Another', 'set', 'of', 'strings'};
    print("\nRunning `forEach` over a set");
    set5.forEach((element){
      if (element=='set'){
        print('Yes');
      }
      else{
        print('No');
      }
    });

    // Converting a set to a list
    var list5 = set5.toList();
    print("\nSet5 converted to list: $list5");

    // Converting a set to a map 
    var map1 = set5.map((value){
      return 'mapped $value';
    });
    print('Values in map: $map1');
  } 

  setOperations(){
    var set6 = {'el1', 'el2', 'el3'};
    var set7 = {'el3', 'el4', 'el5'};

    // Finding union 
    print('\n\n****Set operations****\n');
    print('Union of Set6 and Set7: ${set6.union(set7)}');

    // Finding intersection
    print('Intersection of Set6 and Set7: ${set6.intersection(set7)}');

    // Finding difference of sets
    print('Difference of Set6 and Set7: ${set6.difference(set7)}');
    print('Difference of Set6 and Set7: ${set7.difference(set6)}');
  }

  // Performing set operations over multiple sets
  setOperationsMultiple(){
    var set6 = {'el1', 'el2', 'el3'};
    var set7 = {'el3', 'el4', 'el5'};
    var set8 = {'el3', 'el2', 'el4'};

    // Finding union 
    print('\n\n****Set operations over multiple sets****\n');
    print('Union of Set6, Set7 and Set8: ${set6.union(set7).union(set8)}');

    // Finding intersection
    print('Intersection of Set6, Set7 and Set8: ${set6.intersection(set7).intersection(set8)}');

    // Finding difference of sets
    print('Difference of Set6, Set7 and Set8: ${set6.difference(set7).difference(set8)}');
    print('Difference of Set6, Set7 and Set8: ${set7.difference(set6).difference(set8)}');
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
// - When we assign same key repeatedly to different values, the last assigned key-value pair holds true in the memory.



/* ====================================================================== */
/*                                 QUEUES                                 */
/* ====================================================================== */
class QueueDataType{

  QueueDataType(){
    // Creating a queue
    Queue qu1 = new Queue();
    print(qu1);  
    
    // Creating a queue from a list
    var list1 = ['this', 'is', 'a', 'list'];
    var qu2 = new Queue.from(list1);
    print("qu2: $qu2");

  }

  // Using various function on Queue in Dart 
  functionsOnQueues(){
    var list2 = ['first', 'second', 'third'];
    var qu3 = Queue.from(list2);
    print("qu3: $qu3");

    // Adding an element to a queue
    qu3.add('fourth');
    print("qu3: $qu3");

    // Adding multiple elements to a queue
    qu3.addAll(['fifth', 'sixth', 'seventh']);
    print("qu3: $qu3");
  
    // Checking if the queue is empty or not 
    print("Is qu3 empty: ${qu3.isEmpty}");

    // Adding an element to the first
    qu3.addFirst('zeroth');
    print("qu3: $qu3");

    // Adding an element to the last

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

  // var listDataType = ListDataType();
  // listDataType;
  // listDataType.MultiDimLists();

  // var setDataType = SetDataType();
  // setDataType;
  // setDataType.listVsSet();
  // setDataType.addingElementsToset();
  // setDataType.functionsOverSets();
  // setDataType.setOperations();
  // setDataType.setOperationsMultiple();

  // var mapDataType = MapDataType();
  // mapDataType;

  var queueDataType = QueueDataType();
  queueDataType;
  queueDataType.functionsOnQueues();

}



/* ====================================================================== */
/*                                   END                                  */
/* ====================================================================== */