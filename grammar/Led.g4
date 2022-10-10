
grammar Led;

EQ : '=' ;
COMMA : ',' ;
SEMI : ';' ;
LPAREN : '(' ;
RPAREN : ')' ;
LSQUARE : '[' ;
RSQUARE : ']' ;
QUOTE : '"' ;

INT : [0-9]+ ;
ID : [a-zA-Z_][a-zA-Z_0-9]* ;
STRING : [a-zA-Z_0-9]+;
WS : [ \t]+ -> skip ;
NEWLINE : [\r\n]+ -> skip;

Q_STRING : QUOTE ~["\r\n]* QUOTE ; 

LINE_COMMENT
    : '#' ~[\r\n\u0085\u2028\u2029]* -> channel(HIDDEN)
    ;

control
    : 'menu'
    | 'submenu'
    | 'button'
    | 'item'
    | 'dialog'
    | 'separator'
    | 'fill'
    | 'hbox'
    | 'vbox'
    | 'dialog'
    | 'label'
    | 'frame'
    | 'toggle'
    | 'zbox'
    | 'text'
    | 'radio'
    ;

attributeName
    : ID
    | Q_STRING
    | INT
    ;

attributeValue
    : ID
    | INT
    | Q_STRING
    | STRING
    ;

attribute
    : attributeName EQ attributeValue;

attributeList
    : attribute (COMMA attribute)*
    ;

attributeSection
    : LSQUARE attributeList RSQUARE
    | LSQUARE RSQUARE
    | 
    ;
    
value
    : ID
    | INT
    | Q_STRING
    | instance
    | handle
    ;

valueList
    : value (COMMA value)*
    ;
    
valueSection
    : LPAREN valueList RPAREN
    | LPAREN RPAREN
    ;
    
instance
    : control attributeSection valueSection;

handle
    : ID EQ instance;

led
   : handle* EOF
   ;
