; ok tokens with all the allowed characters
(set-logic QF_LIA)
(set-info :x 1234567890)
(set-info :x 123456789.0123456789 )
(set-info :abcdefghijklmnopqrstuvwxyz a)
(set-info :ABCDEFGHIJKLMNOPQRSTUVWXYZ a)
(set-info :0123456789~!@$%^&*_-+=<>.?/ a)
(set-info :x A0123456789~!@$%^&*_-+=<>.?/ )
(set-info :x abcdefghijklmnopqrstuvwxyz )
(set-info :x ABCDEFGHIJKLMNOPQRSTUVWXYZ )
(set-info :x |0123456789~!@$%^&*_-+=<>.?/| )
(set-info :x |abcdefghijklmnopqrstuvwxyz| )
(set-info :x |ABCDEFGHIJKLMNOPQRSTUVWXYZ| )
(set-info :x | 	
"';:{}[]()`,#| )
(set-info :x "0123456789~!@$%^&*_-+=<>.?/" )
(set-info :x "abcdefghijklmnopqrstuvwxyz" )
(set-info :x "ABCDEFGHIJKLMNOPQRSTUVWXYZ" )
(set-info :x " 	
|';:{}[]()`,\#" )
(set-info :x #b0101 )
(set-info :x #xabcdefABCDEF0123456789 )
