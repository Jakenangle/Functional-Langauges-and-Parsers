/* your name here
 * CS-435, Spring 2011
 * an ANTLR lexer grammar for Cool
 */

lexer grammar CoolLex;


/* definitions */

fragment UC_LETTER
   : 'A' .. 'Z'
   ;


/* keywords */

CLASS : ('c'|'C')('l'|'L')('a'|'A')('s'|'S')('s'|'S') ;

/* keyword objects */

FALSE : 'f' ('a'|'A')('l'|'L')('s'|'S')('e'|'E') ;

/* operators, except for isvoid and not, which are keyword operators */

DOT : '.' ;

/* punctuation */

SEMICOLON : ';' ;


/* whitespace */



 /*Comments */ 
SL_COMMENT :  
  '--' (.)* '\n' ;

MULTILINECOMMENT :
  '(*' (.)* '*)'; 


/* identifiers */


/* integer constant */


/* strings */

