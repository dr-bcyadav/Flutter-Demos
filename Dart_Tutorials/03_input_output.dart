/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* --------------------- Compiled by: (Dr.) B.C. Yadav ------------------ */
/* ----------------------- On: 2025/01/10 11:37:33 ---------------------- */
/* -------------------- Updated: 2025/01/10 17:09:49 -------------------- */
/* ====================================================================== */
/* This code covers the basic know-hows of dart language focussing on standard input output operation in dart, and assumes that:
  - flutter and dart have been installed in the system,
  - `flutter` and `dart` are recognized as global commands, and 
  - dart programs can be run simply by typing `dart \path\to\dart_program_name.dart` 

Alternatively, one can make use of https://dartpad.dev/ for running the dart snippets.*/



/* ====================================================================== */
/*                                LIBRARIES                               */
/* ====================================================================== */
import 'dart:ffi';
import 'dart:io';



/* ====================================================================== */
/*                         STANDARD I/O OPERATIONS                        */
/* ====================================================================== */
/* ======================== Taking A String Input ======================= */
class StringInput{

  // Constructor
  StringInput(){
    print("Enter the day today");
    String? day = stdin.readLineSync();
    print("Today is $day");
  }

  // Method 
  DayInput(){
    print("Enter the day today");
    String? day = stdin.readLineSync();
    print("Today is $day");
  }

}
// - Here above, two approaches are shown:  
  // - We create a constructor so that the input prompt will occur immediately when we create the instance of the class `StringInput`. 
  // - We also achieve similar functionality via a method, but the prompt will occur only when the class object has been created and this method is called.



/* ======================= Taking An Integer Input ====================== */
class IntInput{

  IntInput(){
    print("Enter age");
    int? n = int.parse(stdin.readLineSync()!);
    print("Age is $n");
  }
}
// - Here, we need to note that `int.parse()` function does not accept a null string, however, the output of `readLineSync()` is `String?` which means that it can either be a string or a null. 
// - Hence, we need to assert that the result of `readLineSync()` is not null using the assertion operator (!).



/* ======================== Handling Null Inputs ======================== */
// There can be cases when the user doesn't provide any input and presses `enter` on the keyboard. The above two cases would throw error in this situation. 
// It can be treated usign try and catch.

class IntInputWithNull{

  IntInputWithNull(){
    print("Enter age");
    try{
      int? n = int.parse(stdin.readLineSync()!);
      print("Age is $n");
    } catch (e) {
      print("Invalid input. Please enter a valid integer.");
    }
  }
}



/* ====================== Output Statement In Dart ====================== */
class OutputStatements{

  displayOutput1(){
    print("Keep learning dart.");
    stdout.write("Keep learning dart.");
  }

  displayOutput2(){
    stdout.write("Keep learning dart.");
    print("Keep learning dart.");
  }
}
// - In the execution of above class, we can observe that the `print()` statement brings the cursor to next line while `stdout.write()` keeps the cursor on the same line.
// - It should be noted that when we not define the constructor, Dart automatically creates producing the effect of keeping the line `OutputStatements() {};` within class definition.



/* ====================================================================== */
/*                          CALLING ABOVE CLASSES                         */
/* ====================================================================== */
void main(){
  
  var stringInput = StringInput();  // creating class object
  stringInput.DayInput();  // calling object's method

  IntInput();
  IntInputWithNull();

  // Switch b/w the two methods to observe the behaviour of `print()` and `stdout.write()`
  var outputStatements = OutputStatements();
  outputStatements.displayOutput1();
  outputStatements.displayOutput2();
}



/* ====================================================================== */
/*                                   END                                  */
/* ====================================================================== */