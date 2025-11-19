;CATT-Acoustic v9.1 Shoebox Example – Task 1(a) Classroom
;MASTER.GEO

;constant declarations
LOCAL  h  =  2.7   ;room height
LOCAL  w  =  6     ;room width
GLOBAL d  =  8     ;room depth

;absorption and scattering coefficients 125Hz to 4kHz [%], RGB-color
ABS hardlow   = <2 2 2 2 2 2> L <1 1 1 1 1 1> { 200 200 200 }
ABS ceilingHi = <60 60 60 60 60 60> L <1 1 1 1 1 1> { 150 200 255 }

CORNERS
;floor corners
 1   -w/2   0   0
 2   -w/2   d   0
 3    w/2   d   0
 4    w/2   0   0
;ceiling corners
11   -w/2   0   h
12   -w/2   d   h
13    w/2   d   h
14    w/2   0   h

PLANES
[1 floor      / 4 3 2 1 / hardlow ]
[2 ceiling    / 11 12 13 14 / ceilingHi ]
[3 front wall / 1 11 14 4 / hardlow ]
[4 rear wall  / 3 13 12 2 / hardlow ]
[5 left wall  / 2 12 11 1 / hardlow ]
[6 right wall / 4 14 13 3 / hardlow ]
