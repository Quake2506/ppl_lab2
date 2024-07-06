grammar PPL_Lab2_Part2;


prog: expression* EOF;
/** The start rule; begin parsing here. */

expression: expression (Add | Sub) expression1 | expression1;
expression1: expression1 (Mul | Div) expression2 | expression2;
expression2: expression3 And expression2 | expression3;
expression3: expression3 Or expression4 | expression4;
expression4: Not operand | operand;

operator
    : Add
    | Sub
    | Mul
    | Div
    | And
    | Or
    | Not
    ;

operand: Id | Int | Bool | '(' expression ')';
Int: '0' | [1-9]+ [0-9]*;
Bool: 'true' | 'false';
Id: [a-z] [a-zA-Z]*;

/* OPERATORS */
Add: '+';
Sub: '-';
Mul: '*';
Div: '/';
And: '&&';
Or: '||';
Not: '!';

WS : [ \r\n\t]+ -> skip ; // toss out whitespace