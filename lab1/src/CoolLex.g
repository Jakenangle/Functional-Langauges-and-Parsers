/* your name here
 * CS-435, Spring 2011
 * an ANTLR lexer grammar for Cool
 */

lexer grammar CoolLex;


/* definitions */

fragment UC_LETTER :
	'A' .. 'Z';

NEW_LINE :
	'\n';

/* keywords */

CLASS : 
	('c'|'C')('l'|'L')('a'|'A')('s'|'S')('s'|'S');

/* keyword objects */

FALSE : 
	'f' ('a'|'A')('l'|'L')('s'|'S')('e'|'E');

/* operators, except for isvoid and not, which are keyword operators */

DOT : 
	'.';

/* punctuation */

SEMICOLON : ';';


/* whitespace */
WHITESPACE :
	(' '|'\r'|'\t'|'\u000C'|'\n');


 /*Comments */ 
SL_COMMENT :  
 	'--' (.)* '\n';

MULTILINECOMMENT :
 	'(*' (.)* '*)'; //fix later


/* identifiers */
ID : 
	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;

/* integer constant */


/* strings */

