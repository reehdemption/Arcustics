;MASTER.GEO
;PROJECT=ARCroom_T3a

; ------------------------
; GEOMETRIC PARAMETERS
; ------------------------
GLOBAL Lytot    = 7.985
GLOBAL y1       = 0.6
GLOBAL y2       = 5.55
GLOBAL y4       = 7.985 - 1.81
GLOBAL Wxstart  = 6.58
GLOBAL x1       = -1.36
GLOBAL x2       = 4.74
GLOBAL Hzstart  = 2.676
GLOBAL Hzend    = 2.3

; ------------------------
; MATERIAL DEFINITIONS
; ------------------------
; Baseline for Task 3a — hard walls, moderate scattering,
; main ceiling slightly absorptive (will be tuned in 3b)
ABS floor          <5 5 5 5 5 5>       L <10 10 10 10 10 10>
ABS wall           <5 5 5 5 5 5>       L <10 10 10 10 10 10>
ABS ceilingback    <5 5 5 5 5 5>       L <10 10 10 10 10 10>
ABS mainceilingabs <20 30 50 70 75 75> L <10 10 10 10 10 10>

; ------------------------
; CORNERS
; ------------------------
CORNERS
 1   0        0        0
 2   x2       0        0
 3   x2       y1       0
 4   Wxstart  y1       0
 5   Wxstart  Lytot    0
 6   x1       Lytot    0
 7   x1       y4       0
 8   0        y4       0
 9   0        0        Hzstart
10   x2       0        Hzstart
11   x2       y1       Hzstart
12   Wxstart  y1       Hzstart
13   Wxstart  y2       Hzstart
14   Wxstart  y2       Hzend
15   Wxstart  Lytot    Hzend
16   x1       Lytot    Hzend
17   x1       y4       Hzend
18   0        y4       Hzend
19   0        y2       Hzstart
20   0        y2       Hzend

; ------------------------
; PLANES
; ------------------------
PLANES
[1  floor        / 1 2 3 4 5 6 7 8               / floor]
[2  frontwall    / 1 9 10 2                      / wall]
[3  wallA        / 2 10 11 3                     / wall]
[4  wallB        / 3 11 12 4                     / wall]
[5  wallC        / 4 12 13 14 15 5               / wall]
[6  wallD        / 5 15 16 6                     / wall]
[7  wallE        / 6 16 17 7                     / wall]
[8  wallF        / 7 17 18 8                     / wall]
[9  wallG        / 1 8 18 20 19 9                / wall]
[10 ceilingBack1 / 14 13 19 20                   / ceilingback]
[11 ceilingBack2 / 14 20 18 17 16 15             / ceilingback]
[12 mainCeiling  / 9 19 13 12 11 10              / mainceilingabs]


