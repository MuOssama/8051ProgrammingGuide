# 8051ProgrammingGuide
8051 microcontroller programming guide
# Download Small Device C Compiler (SDCC) compiler
[Click download and install the compiler](https://sdcc.sourceforge.net/snap.php)

# Text Editor
use any text editor to write the c code\
personnaly I use Notepad++

# 8051.h Library
you can download the 8051 MC datasheet or simply registers declared in 8051.h library

# Blinking LED example
## Coding
as starter use P0 and P1 and P2 and P3 regesters\
for example for making pin 0 port P0 high just do that\
P0 |= (1<<0); //set bit\
or\
P0 = 0x01;\
no setting the pin input or output needed
## Compiling
after installing sdcc\
type in cmd:

>sdcc -v
you must get:\
SDCC : mcs51/z80/z180/r2k/r2ka/r3ka/sm83/tlcs90/ez80_z80/z80n/r800/ds390/pic16/pic14/TININative/ds400/hc08/s08/stm8/pdk13/pdk14/pdk15/mos6502/mos65c02 TD- 4.4.0 #14620 (MINGW32)\
published under GNU General Public License (GPL)\
if not, you have to  install it properly\
for compiling...\
in the same directory open cmd
>sdcc file.c
the file should be compiled
finally, we have to optain the hex\
type in cmd
>packihx file.ihx>file.hex
file.hex obtained !!
