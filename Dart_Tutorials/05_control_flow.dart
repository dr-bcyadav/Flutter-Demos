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
// There are four decision making/control flow statements in dart: 
  // if Statement
  // if-else Statement
  // else-if Ladder
  // Nested if Statement



/* ====================================================================== */
/*                              IF STATEMENT                              */
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
/*                          IF ELSE IF STATEMENT                          */
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
    else{
      print("Condition is false");
    }
  }
}



/* ====================================================================== */
/*                         CALLING ABOVE FUNCTIONS                        */
/* ====================================================================== */
void main(){

  var ifStatement = IfStatement();
  ifStatement.executionOfIf();

  var ifElseIfStatement = IfElseIfStatement();
  ifElseIfStatement.executionOfIfElse();

}