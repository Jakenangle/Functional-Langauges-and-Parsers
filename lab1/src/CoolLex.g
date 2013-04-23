/* your name here
 * CS-435, Spring 2011
 * an ANTLR lexer grammar for Cool
 */

lexer grammar CoolLex;


/* definitions */

fragment UC_LETTER :
	'A' .. 'Z';

SEMICOLON : 
	';';

WHITESPACE :
	(' '|'\r'|'\t'|'\u000C'|'\n');

/* keywords */

CLASS : 
	('c'|'C')('l'|'L')('a'|'A')('s'|'S')('s'|'S');

/* keyword objects */

FALSE : 
	'f' ('a'|'A')('l'|'L')('s'|'S')('e'|'E');

TRUE :
	't' ('r'|'R')('u'|'U')('e'|'E');

ELSE :
	('e'|'E')('l'|'L')('s'|'S')('e'|'E');

FI :
	('f'|'F')('i'|'I');

IF :
	('i'|'I')('f'|'F');



/* operators, except for isvoid and not, which are keyword operators */

DOT : 
	'.';


 /*Comments */ 
SL_COMMENT :  
 	'--' (.)* '\n';

MULTILINECOMMENT :
 	'(*' (.)* '*)'; //fix later


/* identifiers */
ID : 
	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;

/* integer constant */
INT :
	('0'..'9')+;


/* strings */
STRING :
	'"' .* '"';

