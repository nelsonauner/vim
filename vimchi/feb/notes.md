#Part I: One Window Vim

How do we go to the right file, in the right window, in the right tab? 
Your Code Is Art, so take it all in
- Colour, Silhouette, Negative Space
- Recognize Patterns



Find a function call in a different file

command | action
---|---
ctrl-6 or crtl-^ | switch actively between open buffers
:e | most native way to navigate

##Jump List 
Shows most recent movements

command | action
-----|----
ctrl-o | move forward
crtl-i | move backword

##split
command | action
-----|-----
ctrl-w | "zoom out" 
s | split
o | only (kill all windows but open one


:vsp
:sv
(dont use those) 


##buffers:
command | action
---|----
:ls | show open buffers
:b  | list all buffers? 
:bo | kill all non-current buffers
:bw | wipe current buffer
:%bw | kill all non-current buffers
:b FILENAME + tab completion | easily find a buffer



#Part II: HTML
##How can we try to efficiently write HTML? 
- Don't. Use HAML or markup
>  "HTML lets you write what you mean, and then give you the opportunity to screw up on every closing tag"
- but if we **have** to write html, must learn:


##Surround.vim

visually select code
S + type <body> surrounds code with <body> </body> tags
y + s + s + type out something -> surround with that tag

italicize the following word COOL

command | action
---|-----
d a t | delete ALL the tag
cst | change surrounding tag
cs <C-T> | wrap the new tags on their own lines

#Part III: Misc helpful commands

command | action
---|----
`vat` <ESC> | find closing tag (moving down) 
`^` | skip to first non-whitespace char current line |
`+` | skip from white space to the first non-whitespace char on line below
`-` | skip from white space to first non-whitespace char on line above


Ex: 
put your cursor here: X

   now press + and you will be on the "n"
