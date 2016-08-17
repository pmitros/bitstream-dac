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

This is distributed under an MIT License. If you use this,
acknowledgement is appreciated (but not required).

MIT License
===========

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.