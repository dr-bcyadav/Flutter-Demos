/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* --------------------- Compiled by: (Dr.) B.C. Yadav ------------------ */
/* ----------------------- On: 2025/03/02 11:32:07 ---------------------- */
/* -------------------- Updated: 2025/03/02 11:32:07 -------------------- */
/* ====================================================================== */
/* This code covers the basic know-hows of dart language focussing on control flow in dart, and assumes that:
  - flutter and dart have been installed in the system,
  - `flutter` and `dart` are recognized as global commands, and 
  - dart programs can be run simply by typing `dart run \path\to\dart_program_name.dart` 

Alternatively, one can make use of https://dartpad.dev/ for running the dart snippets.*/



/* ====================================================================== */
/*                          CONTROL FLOW IN DART                          */
/* ====================================================================== */
// These are the following making/control flow statements in dart: 
  // if statement
  // if-else-if/ladder if statement
  // Nested if
  // switch case




/* ====================================================================== */
/*                                   IF                                   */
/* ====================================================================== */
class IfStatement{

  int int1 = 10;

  IfStatement(){
    print("\n***** If Statement *****");
  }

  executionOfIf(){
    if (int1>3){
      print("Condition (10>3) is true");
    }
  }
}



/* ====================================================================== */
/*                               IF ELSE IF                               */
/* ====================================================================== */
class IfElseIfStatement{

  int int2 = 20;

  IfElseIfStatement(){
    print("\n***** If Else If *****");
  }

  executionOfIfElse(){
    if (int2>4){
      print("Condition (20>4) is true");
    }
    else if (int2>5){
      print("Condition (20>5) is true but it won't be checked if the previous condition is met");
    }
    else {
      print("Condition is false");
    }
  }
}



/* ====================================================================== */
/*                                NESTED IF                               */
/* ====================================================================== */
// if else if conditions can be nested into one another as per use case.
class NestedIf{

  int x = 5;
  int y = 7;

  NestedIf(){
    print("\n***** Nested If *****");
  }

  executionOfNestedIf(){
    if((++x > y--) && (++x < ++y)){
        print("Condition true");
    }
    else {
        // print("Condition false");
        if(++x < 20){
          print("Finally this condition is true.");
        }
    }
  }
}



/* ====================================================================== */
/*                               SWITCH CASE                              */
/* ====================================================================== */




/* ====================================================================== */
/*                         CALLING ABOVE FUNCTIONS                        */
/* ====================================================================== */
void main(){

  var ifStatement = IfStatement();
  ifStatement.executionOfIf();

  var ifElseIfStatement = IfElseIfStatement();
  ifElseIfStatement.executionOfIfElse();

  var nestedIf = NestedIf();
  nestedIf.executionOfNestedIf();

}