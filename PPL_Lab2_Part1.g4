grammar PPL_Lab2_Part1;


prog: expression* EOF;
/** The start rule; begin parsing here. */

expression
    : operand (operator operand)*
    | bool_expr (bool_operator bool_expr)*
    ;

operator
    : Add
    | Sub
    | Mul
    | Div
    ;

bool_operator: And | Or | Not;
operand: Id | Int | Bool;
bool_expr: Id | Bool;
Int: '0' | [1-9]+ [0-9]*;
Bool: 'true' | 'false';
Id: [a-zA-Z]+;

/* OPERATORS */
Add: '+';
Sub: '-';
Mul: '*';
Div: '/';
And: '&&';
Or: '||';
Not: '!';

WS : [ \r\n\t]+ -> skip ; // toss out whitespace