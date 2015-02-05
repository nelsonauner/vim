One Window Vim
==============

How do we go to the right file, in the right window, in the right tab? 
Your Code Is Art
- Colour, Silhouet<F12>te, Negative Space
- Recognize Patters
- Be fair to your pair

Find a function call in a different file
ctrl-6 or crtl-^ - switch actively between open buffers
:e - most native way to navigate

##Jump List
ctrl-o move forward
crtl-i move backword

##split
ctrl-w
s - split
o - only (kill all windows but open one
:vsp
:sv
(dont use those) 


##buffers:
:ls
:b
:bo - kill all non-current buffers
:bw - wipe current buffer
:%bw - kill all non-current buffers

:b FILENAME + tab completion

##ctags

HTML
========


1- don't use it. Use HAML, or markup. 
HTML lets you write what you mean, and then give you the opportunity to screw up on every closing tag

##Surround.vim

visually select code
S + type <body> surrounds code with <body> </body> tags
y + s + s + type out something 


italicize the following word COOL
d a t - delete ALL the tag


cst -- change surrounding tag
cs <C-T> to wrap the new tags on their own lines==

to close: 

<strong> <div> I made a mistake </

#Super helpful: 
vat <ESC> find closing tag (moving down) 
+ and -
skip from white space to the next character

Ex: 
put your cursor here: X
                now press + and you will be on the "n"
