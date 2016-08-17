VHDL Bitstream DAC
==================

The VHDL file implements a bitstream DAC. To use it, for a crude DAC,
simply attach a low-pass-filter to the output of the digital output
pin. In some cases, you don't even need an LPF (since speakers,
motors, etc. inherently low-pass filter). For a high-accuracy DAC, add
a precision register to make sure the transitions are well-timed, and
a clipping circuit, to make sure the the high and low levels are very
consistent from cycle to cycle. At a high clock speed, this can give a
very linear, reasonable accuracy DAC.

The DAC was tested, and worked adequately well for my purposes
(although it was used as a quick-and-dirty hack for a low precision
project). 
