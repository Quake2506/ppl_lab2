grammar PPL_Lab2_Part1;


prog: expression* EOF;
/** The start rule; begin parsing here. */

expression
    : operand
    | operand operator operand
    ;

operator
    : Add
    | Sub
    | Mul
    | Div
    | And
    | Or
    | Not
    ;

operand: Id | Int | Bool;
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