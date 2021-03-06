# -*- makefile -*-

PEARL_EXTRA    = dsf tree234 grid penrose loopgen tdq

pearl          : [X] GTK COMMON pearl PEARL_EXTRA pearl-icon|no-icon
pearl          : [G] WINDOWS COMMON pearl PEARL_EXTRA pearl.res?

pearlbench     : [U] pearl[STANDALONE_SOLVER] PEARL_EXTRA STANDALONE m.lib
pearlbench     : [C] pearl[STANDALONE_SOLVER] PEARL_EXTRA STANDALONE

ALL += pearl[COMBINED] PEARL_EXTRA

!begin gtk
GAMES += pearl
!end

!begin >list.c
    A(pearl) \
!end

!begin >wingames.lst
pearl.exe:Pearl
!end
