/* ====================================================================== */
/*                                  ABOUT                                 */
/* ====================================================================== */
/* --------------------- Compiled by: (Dr.) B.C. Yadav ------------------ */
/* ----------------------- On: 2025/01/07 09:18:25 ---------------------- */
/* -------------------- Updated: 2025/01/08 06:45:50 -------------------- */
/* ====================================================================== */
/* This code covers the basic know-hows of dart language focussing on operators in dart, and assumes that:
  - flutter and dart have been installed in the system,
  - `flutter` and `dart` are recognized as global commands, and 
  - dart programs can be run simply by typing `dart \path\to\dart_program_name.dart` 

Alternatively, one can make use of https://dartpad.dev/ for running the dart snippets.*/



/* ====================================================================== */
/*                          ARITHMETIC OPERATORS                          */
/* ====================================================================== */
class ArithOperations {
  int a, b;
  
  ArithOperations(this.a, this.b);  // Constructor to initialize values

  void displayResult(){
    var c = a+b;
    var d = a-b;
    var e = -d;
    var f = a*b;
    var g = b/a;
    var h = b~/a;
    var i = b%a;

    print("Sum: $c");
    print("Difference: $d");
    print("Negation: $e");
    print("Product: $f");
    print("Division: $g");
    print("Quotient: $h");
    print("Modulus: $i");
  }
}



/* ====================================================================== */
/*                          RELATIONAL OPERATORS                          */
/* ====================================================================== */
class RelOperations {
  int a,b; 

  RelOperations(this.a, this.b);

  void displayResult(){
    print("a is greater than b: ${(a>b)}");
    print("a is greater than equal to b: ${(a>=b)}");
    print("a is less than b: ${(a<b)}");
    print("a is less than equal to b: ${(a<=b)}");
    print("a is equal to b: ${(a==b)}");
    print("a is not equal to b: ${(a!=b)}");
  }
}



/* ====================================================================== */
/*                           TYPE TEST OPERATORS                          */
/* ====================================================================== */
// This class of operators check whether the given object is of specific type, and returns a boolean response accordingly.
class TypeTestOperations {
  var a,b; 

  TypeTestOperations(this.a, this.b);

  void displayResult(){
    print("a is string ${a is String}");
    print("b is an integer ${b is int}");
  }
}



/* ====================================================================== */
/*                           TYPECAST OPERATIONS                          */
/* ====================================================================== */
class TypeCastOperations {
  var a; 

  TypeCastOperations(this.a);

  void displayResult(){
    String str = a as String;
    print(str);
  }
}



/* ====================================================================== */
/*                           BITWISE OPERATIONS                           */
/* ====================================================================== */
class BitWiseOperations {
  var a,b; 

  BitWiseOperations(this.a, this.b);

  void displayResult(){
    print("Bitwise AND: a&b: ${a&b}");
    print("Bitwise OR: a|b: ${a|b}");
    print("Bitwise XOR: a|b: ${a^b}");
    print("Bitwise NOT: ~a: ${~a}");
    print("Left Shift: a<<b: ${a<<b}");
    print("Right Shift: a>>b: ${a>>b}");
    print("Unsigned Shift right: a>>>b: ${a>>>b}");
  }
}



/* ====================================================================== */
/*                          ASSIGNMENT OPERATIONS                         */
/* ====================================================================== */
class AssgnOperations {
  var a,b; 

  AssgnOperations(this.a, this.b);

  void displayResult(){
    var c = a*b;  // simple assignment operation
    print(c);  

    var d;   
    d ??= a+b;  // value assigned since its null
    print(d);
    d ??= a-b;  // value not assigned since its not null
    print(d);
  }
}



/* ====================================================================== */
/*                     COMPOUND ASSIGNMENT OPERATIONS                     */
/* ====================================================================== */
class CompAssgnOperations {
  var a,b; 

  CompAssgnOperations(this.a, this.b);

  void displayResult(){
    print("a: $a");
    print("a+=1 implies a=a+1: ${a+=1}");
    print("a-=1 implies a=a-1: ${a-=1}");
    print("a*=1 implies a=a*1: ${a*=1}");
    print("a/=1 implies a=a/1: ${a/=1}");
    print("a~/=1 implies a=a~/1: ${a~/=1}");
    print("a%=1 implies a=a%1: ${a%=1}");
    print("a&=1 implies a=a&1: ${a&=1}");
    print("a|=1 implies a=a|1: ${a|=1}");
    print("a^=1 implies a=a^1: ${a|=1}");
    print("a<<1 implies a=a<<1: ${a<<=1}");
    print("a>>1 implies a=a>>1: ${a>>=1}");

  }
}



/* ====================================================================== */
/*                           LOGICAL OPERATIONS                           */
/* ====================================================================== */
class LogicalOperations {
  var a,b; 

  LogicalOperations(this.a, this.b);

  void displayResult(){
    print("Using AND operator: ${(a>3)&&(b<6)}");
    print("Using OR operator: ${(a>3)||(b<6)}");
    print("Using NOT operator: ${!(a>3)}");
  }
}

// - In Dart, only the boolean values `true` and `false` are considered valid boolean expressions. Non-zero numbers are not automatically converted to true, and zero is not automatically converted to false.



/* ====================================================================== */
/*                         CONDITIONAL OPERATIONS                         */
/* ====================================================================== */
class ConditionalOperations{
  var a,b;

  ConditionalOperations(this.a, this.b);

  void displayResult(){
    // condition ? expression1: expression2
    // If condition is true then execute expression1, else execute expression2.
    int a = 5;
    var c = (a<10) ? "a is less than 10":"a is more than 10";
    print(c);

    // expression1 ?? expression2
    // If expression1 is non-null then return its value, else return the value of expression2.
    int n = 10;
    var d = n ?? "this statement won't be executed";
    print(d);
    // - Here above the the first expression is non-null hence its value is returned.

    int ? m;
    var e = m ?? "m has null value";
    print(e);
    // - Here above the first expression is null hence the value of the second expression is returned.
    // - Also, the variable 'm' is declared as "int? m", indicating that it can hold an integer value or a null value. The '?' denotes that the variable is nullable.

  }
}


/* ====================================================================== */
/*                       CASCADE NOTATION OPERATIONS                      */
/* ====================================================================== */
class CascadeNotationOperations{
  var a,b;

  CascadeNotationOperations(this.a, this.b);

  dynamic add(){
    var c = a+b;
    print("a+b: $c"); 
    return c;
  }

  void product(){
    var c = add();
    var d = a*b*c;
    print("a*b*c: $d");
  }

  void difference(){
    var e = a-b;
    print("a-b: $e");
  }
}



/* ====================================================================== */
/*                      CALLING ALL THE ABOVE CLASSES                     */
/* ====================================================================== */
void main() {
  print("\n${'-'*10} Arithmetic Operations ${'-'*10}");
  var arithOperations = ArithOperations(4,5);
  arithOperations.displayResult();

  print("\n${'-'*10} Relational Operations ${'-'*10}");
  var relOperations = RelOperations(4,5);
  relOperations.displayResult();

  print("\n${'-'*10} Type Test Operations ${'-'*10}");
  var typeTestOperations = TypeTestOperations(4,5);
  typeTestOperations.displayResult();

  print("\n${'-'*10} Type Cast Operations ${'-'*10}");
  var typeCastOperations = TypeCastOperations("4");
  typeCastOperations.displayResult();

  print("\n${'-'*10} Bit Wise Operations ${'-'*10}");
  var bitWiseOperations = BitWiseOperations(4,5);
  bitWiseOperations.displayResult();

  print("\n${'-'*10} Assignment Operations ${'-'*10}");
  var assgnOperations = AssgnOperations(4,5);
  assgnOperations.displayResult();

  print("\n${'-'*10} Compound Assignment Operations ${'-'*10}");
  var compAssgnOperations = CompAssgnOperations(4,5);
  compAssgnOperations.displayResult();

  print("\n${'-'*10} Logical Operations ${'-'*10}");
  var logicalOperations = LogicalOperations(4,5);
  logicalOperations.displayResult();

  print("\n${'-'*10} Conditional Operations ${'-'*10}");
  var conditionalOperations = ConditionalOperations(4,5);
  conditionalOperations.displayResult();

  print("\n${'-'*10} Cascade Notation Operations ${'-'*10}");
  var cascadeNotationOperations = CascadeNotationOperations(4,5);
  cascadeNotationOperations..product()..difference();

  // Or use the following style
  // cascadeNotationOperations  
  //   ..product()
  //   ..difference();
}



/* ====================================================================== */
/*                                   END                                  */
/* ====================================================================== */