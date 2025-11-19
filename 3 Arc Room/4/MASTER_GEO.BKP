;MASTER.GEO
;PROJECT=3a

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
; Loftet lidt mindre absorberende i mid/højfrekvens
ABS floor <5 5 5 5 5 5> ;L <25 25 25 25 25 25>
ABS wall  <5 5 5 5 5 5> ;L <25 25 25 25 25 25>
ABS ceilingback    <50 74 88 91 76 59> ;L <25 25 25 25 25 25>
ABS mainceilingabs <50 74 88 91 76 59> ;L <25 25 25 25 25 25>



; ------------------------
; CORNERS
; ------------------------
CORNERS
    1    0.000   0.000   0.000
    2    4.740   0.000   0.000
    3    4.740   0.600   0.000
    4    6.580   0.600   0.000
    5    6.580   7.985   0.000
    6   -1.360   7.985   0.000
    7   -1.360   6.175   0.000
    8    0.000   6.175   0.000
    9    0.000   0.000   2.676
   10    4.740   0.000   2.676
   11    4.740   0.600   2.676
   12    6.580   0.600   2.676
   13    6.580   5.550   2.676
   14    6.580   5.550   2.300
   15    6.580   7.985   2.300
   16   -1.360   7.985   2.300
   17   -1.360   6.175   2.300
   18    0.000   6.175   2.300
   19    0.000   5.550   2.676
   20    0.000   5.550   2.300

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
