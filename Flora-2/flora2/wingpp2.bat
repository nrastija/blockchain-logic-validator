
REM This is how XSB really invokes gpp
h:\XSB\XSB\config\x64-pc-windows\bin\gpp -o 4_gpp  -P -m -nostdinc -curdirinclast    "-I.\\closure"  "-I.\\includes"  "-I.\\flrincludes"  "-I.\\genincludes"  "-I.\\lib\include"  "-I.\\AT\include"   "-Ih:\XSB\XSB\emu" "-Ih:\XSB\XSB\prolog_includes"  -DXSB_PROLOG  %1
