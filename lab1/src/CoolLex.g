/* your name here
 * CS-435, Spring 2011
 * an ANTLR lexer grammar for Cool
 */

lexer grammar CoolLex;


/*----definitions----*/

fragment A :
	('a'|'A');

fragment B :
	('b'|'B');

fragment C :
	('c'|'C');

fragment D :
	('d'|'D');

fragment E :
	('e'|'E');

fragment F :
	('f'|'F');

fragment G :
	('g'|'G');

fragment H :
	('h'|'H');

fragment I :
	('i'|'I');

fragment J :
	('j'|'J');

fragment K :
	('k'|'K');

fragment L :
	('l'|'L');

fragment M :
	('m'|'M');

fragment N :
	('n'|'N');

fragment O :
	('o'|'O');

fragment P :
	('p'|'P');

fragment Q :
	('q'|'Q');

fragment R :
	('r'|'R');

fragment S :
	('s'|'S');

fragment T :
	('t'|'T');

fragment U :
	('u'|'U');

fragment V :
	('v'|'V');

fragment W :
	('w'|'W');

fragment X :
	('x'|'X');

fragment Y :
	('y'|'Y');

fragment Z :
	('z'|'Z');


fragment UC_LETTER :
	'A' .. 'Z';

SEMICOLON : 
	';';

WHITESPACE :
	(' '|'\r'|'\t'|'\u000C'|'\n') {$channel=HIDDEN;};

OPENBRACKET :
	'{';

CLOSEBRACKET :
	'}';

OPENSQUARE :
	'[';

CLOSESQUARE :
	']';



/*----keywords----*/

CLASS : 
	C L A S S;

/* keyword objects */

FALSE : 
	'f' A L S E;

TRUE :
	't' R U E;

ELSE :
	E L S E;

FI :
	F I;

IF :
	I F;

IN :
	I N;

INHERITS :
	I N H E R I T S;

ISVOID :
	I S V O I D;

LET :
	L E T;

LOOP :
	L O O P;

POOL :
	P O O L;

THEN :
	T H E N;

WHILE :
	W H I L E;

CASE :
	C A S E;

ESAC :
	E S A C;

NEW :
	N E W;

OF :
	O F;

NOT :
	N O T;



/*----operators----*/
/*except for isvoid and not, which are keyword operators */

DOT : 
	'.';

ADD :
	'+';

SUB :
	'-';

DIV : 
	'/';

MUL :
	'*';

EQUAL :
	'=';

LESSEROREQUAL :
	'<=';

LESS :
	'<';

ASSIGMENT :
	'<-';

AT :
	'@';

TILDE :
	'~';

DARROW:
	'=>';


 /*---Comments---*/ 
SL_COMMENT :  
 	'--' (.)* '\n';

MULTILINECOMMENT :
 	'(*' (options {greedy=false;}: (MULTILINECOMMENT | .))* '*)'; //fix later, make it so it can support embeded multiline comment


/* identifiers */
OBJECTID : 
	('a'..'z') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;

TYPEID :
	('A'..'Z') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;

/* integer constant */
INT :
	('0'..'9')+;

/* strings */
STRING :
	'"' (options {greedy=false;}: ('\\\\'|'\\"' | .))* '"';//need to add support for /"

